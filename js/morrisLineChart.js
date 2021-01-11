// Gráfico de lineas
new Morris.Line({
     // ID of the element in which to draw the chart.
     element: 'lineChart2',
     // Chart data records -- each entry in this array corresponds to a point on
     // the chart.
      data: [ 
        { Año: '2008', valor: 20 },
        { Año: '2009', valor: 10 },
        { Año: '2010', valor: 5 },
        { Año: '2011', valor: 5 },
        { Año: '2012', valor: 20 }
      ],

     // The name of the data record attribute that contains x-values.
     xkey: 'Año',
     // A list of names of data record attributes that contain y-values.
     ykeys: ['valor'],
     // Labels for the ykeys -- will be displayed when you hover over the
     // chart.
     labels: ['Valor'],
     lineColors: ['#D45700']
   });



