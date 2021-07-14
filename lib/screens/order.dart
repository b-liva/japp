import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
  }

  TextEditingController numberController = new TextEditingController();
  String number = '';
  String getOrder = """
  query getOrder(\$number:Int){
  orderByNumber(number:\$number) {
    id
    number
    customer{
      id
      name
    }
    reqspecSet {
      edges {
        node {
          id
          qty
          kw
          rpmNew{
            rpm
          }
          voltage
        }
      }
    }
  }
}
  """;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Order'),
        ),
        body: Query(
          options: QueryOptions(
            document: gql(getOrder),
            variables: {'number': number},
          ),
          builder: (
            QueryResult result, {
            Refetch? refetch,
            FetchMore? fetchMore,
          }) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            var orderRes = result.data;
            var specs = result.data?['orderByNumber']['reqspecSet']['edges'];

            return Column(
              children: [
                TextField(
                  controller: numberController,
                  keyboardType: TextInputType.number,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      number = numberController.text;
                    });
                    refetch!();
                  },
                  child: Text('get'),
                ),
                Text(
                    'شماره درخواست: ${orderRes?['orderByNumber']['number']}'),
                Text(orderRes?['orderByNumber']['customer']['name'] ?? ''),
                Text(orderRes?['orderByNumber']['dateFa'] ?? ''),
                SfDataGrid(
                  source: employeeDataSource,
                  columns: <GridColumn>[
                    GridColumn(
                        columnName: 'id',
                        label: Container(
                            padding: EdgeInsets.all(16.0),
                            alignment: Alignment.center,
                            child: Text(
                              'ID',
                            ))),
                    GridColumn(
                        columnName: 'name',
                        label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            child: Text('Name'))),
                    GridColumn(
                        columnName: 'designation',
                        label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            child: Text(
                              'Designation',
                              overflow: TextOverflow.ellipsis,
                            ))),
                    GridColumn(
                        columnName: 'salary',
                        label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            child: Text('Salary'))),
                    GridColumn(
                        columnName: 'salary2',
                        label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            child: Text('Salary2'))),
                    GridColumn(
                        columnName: 'salary3',
                        label: Container(
                            padding: EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            child: Text('Salary3'))),
                  ],
                  footerFrozenRowsCount: 1,
                  footer: Container(
                    child: Center(
                      child: Text(
                        'Footer view',
                      ),
                    )
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  List<Employee> getEmployeeData() {
    return [
      Employee(10001, 'James', 'Project Lead', 20000, 200, 300),
      Employee(10002, 'Kathryn', 'Manager', 30000, 200, 300),
      Employee(10003, 'Lara', 'Developer', 15000, 200, 300),
      Employee(10004, 'Michael', 'Designer', 15000, 200, 300),
      Employee(10005, 'Martin', 'Developer', 15000, 200, 300),
      Employee(10006, 'Newberry', 'Developer', 15000, 200, 300),
      Employee(10007, 'Balnc', 'Developer', 15000, 200, 300),
      Employee(10008, 'Perry', 'Developer', 15000, 200, 300),
      Employee(10009, 'Gable', 'Developer', 15000, 200, 300),
      Employee(10010, 'Grimes', 'Developer', 15000, 200, 300)
    ];
  }
}

class Employee {
  /// Creates the employee class with required details.
  Employee(this.id, this.name, this.designation, this.salary, this.salary2, this.salary3);

  /// Id of an employee.
  final int id;

  /// Name of an employee.
  final String name;

  /// Designation of an employee.
  final String designation;

  /// Salary of an employee.
  final int salary;
  final int salary2;
  final int salary3;
}

class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<String>(
                  columnName: 'designation', value: e.designation),
              DataGridCell<int>(columnName: 'salary', value: e.salary),
              DataGridCell<int>(columnName: 'salary', value: e.salary2),
              DataGridCell<int>(columnName: 'salary', value: e.salary3),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
