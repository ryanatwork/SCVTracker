$(document).ready(function() {
  $("#crime_tip_table").tablesorter();
  $('.tabs').tabs()
  $( "#crime_tip_date_rec" ).datepicker({ dateFormat: 'yy-mm-dd' });
  $( "#crime_tip_date_due" ).datepicker({ dateFormat: 'yy-mm-dd' });
  $( "#crime_tip_date_assigned" ).datepicker({ dateFormat: 'yy-mm-dd' });
  $( "#crime_tip_date_completed" ).datepicker({ dateFormat: 'yy-mm-dd' });
  $("#search_date_rec_gte").datepicker({ dateFormat: 'yy-mm-dd' });
});
