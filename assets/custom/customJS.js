
jQuery(document).ready(function () {
  jQuery('#data-home-it').DataTable({
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#data-home-building').DataTable({
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-it').DataTable({
    "aLengthMenu": [[20, 30, 50, 75, -1], [20, 30, 50, 75, "All"]],
    "pageLength": 20,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-it-success').DataTable({
    "aLengthMenu": [[10, 20, 30, 50, 75, -1], [10, 20, 30, 50, 75, "All"]],
    "pageLength": 10,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-it-wait').DataTable({
    "aLengthMenu": [[10, 20, 30, 50, 75, -1], [10, 20, 30, 50, 75, "All"]],
    "pageLength": 10,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-it-cancel').DataTable({
    "aLengthMenu": [[10, 20, 30, 50, 75, -1], [10, 20, 30, 50, 75, "All"]],
    "pageLength": 10,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-it-use').DataTable({
    "aLengthMenu": [[20, 30, 50, 75, -1], [20, 30, 50, 75, "All"]],
    "pageLength": 20,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-1').DataTable({
    "aLengthMenu": [[20, 30, 50, 75, -1], [20, 30, 50, 75, "All"]],
    "pageLength": 20,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-2').DataTable({
    "aLengthMenu": [[20, 30, 50, 75, -1], [20, 30, 50, 75, "All"]],
    "pageLength": 20,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-3').DataTable({
    "aLengthMenu": [[20, 30, 50, 75, -1], [20, 30, 50, 75, "All"]],
    "pageLength": 20,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-4').DataTable({
    "aLengthMenu": [[20, 30, 50, 75, -1], [20, 30, 50, 75, "All"]],
    "pageLength": 20,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-5').DataTable({
    "aLengthMenu": [[20, 30, 50, 75, -1], [20, 30, 50, 75, "All"]],
    "pageLength": 20,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-6').DataTable({
    "aLengthMenu": [[20, 30, 50, 75, -1], [20, 30, 50, 75, "All"]],
    "pageLength": 20,
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
  jQuery('#responsive-data-table-cus').DataTable({
    "aLengthMenu": [[20, 30, 50, 75, -1], [20, 30, 50, 75, "All"]],
    "pageLength": 20,
    "order": [[ 0, "desc" ]],
    "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
  });
});


$(function () {

  $('#ForExport').DataTable({
    dom: 'Bfrtip',
    searching: false,
    buttons: [
      {
        extend: "print",
        customize: function (win) {

          var css = '@page { size: landscape; }',
            head = win.document.head || win.document.getElementsByTagName('head')[0],
            style = win.document.createElement('style');

          style.type = 'text/css';
          style.media = 'print';

          if (style.styleSheet) {
            style.styleSheet.cssText = css;
          }
          else {
            style.appendChild(win.document.createTextNode(css));
          }

          head.appendChild(style);
        },
        exportOptions: {
          columns: ':visible'
        }

      },

      {
        extend: 'excelHtml5',
        autoFilter: true,
        sheetName: 'Exported data'
      },
      'colvis',
      'pageLength'

    ],
  });


  // ปุ่มเช็ค เปิด/ปิดช่อง ---------------------------
  $('input[name="ck_license"]').on('click', function () {
    if ($(this).val() === '1') {
      $('#os').prop('disabled', false);
      $('#key').prop('disabled', false);
    } else {
      $('#os').prop("disabled", false).val('');
      $('#key').prop("disabled", true).val('');
    }
  });

  $('input[name="p_ck_license"]').on('click', function () {
    if ($(this).val() === '1') {
      $('#program').prop('disabled', false);
      $('#programkey').prop('disabled', false);
    } else {
      $('#program').prop("disabled", false).val('');
      $('#programkey').prop("disabled", true).val('');
    }
  });
  //-----------------------------------------------

  //Initialize Select2bs4 Elements ----------------
  $('.select2bs4').select2({
    theme: 'bootstrap4',
    width: '100%'
  });
  //-----------------------------------------------
  // ----------------------------------------------

  // Form Export ----------------------------------
  $(document).ready(function () {
    $('#dataTablesExport-Asset').dataTable({
      searching: false,
      dom: 'Bfrtip',
      buttons: [
        'pageLength',

        {
          extend: 'excelHtml5',
          text: '<i class="fa fa-file-excel fa-fw"></i>',
          titleAttr: 'Export Excel',
          title: 'Export list for Excel',
          exportOptions: {
            columns: [2, 3, 4, 5, 6, 7, 8]
          },
          autoFilter: true,
        },
        {
          extend: 'print',
          text: '<i class="fa fa-print fa-fw"></i>',
          titleAttr: 'Print All',
          title: 'Print List',
          exportOptions: {
            columns: [0, 2, 3, 4, 6, 7, 8],
            modifier: {
              selected: null
            }
          },
          footer: true
        }
      ]
    });
  });
  //-----------------------------------------------
  // Wait Save Forms ------------------------------
  // Set input ----------------------------------
  var ck_input = $("input[type='text']");
  //---------------------------------------------
  $('#waitsave').submit(function () {
    if (ck_input.value !== "") {
      $('#showload').show();
      $('#hidden').hide();
      return true;
    }
    return false;
  });
  $('#waitsave2').submit(function () {
    if (ck_input.value !== "") {
      $('#showload2').show();
      $('#hidden2').hide();
      return true;
    }
    return false;
  });
  $('#waitsave3').submit(function () {
    if (ck_input.value !== "") {
      $('#showload3').show();
      $('#hidden3').hide();
      return true;
    }
    return false;
  });
  $('#waitsave4').submit(function () {
    if (ck_input.value !== "") {
      $('#showload4').show();
      $('#hidden4').hide();
      return true;
    }
    return false;
  });
  $('#waitsave5').submit(function () {
    if (ck_input.value !== "") {
      $('#showload5').show();
      $('#hidden5').hide();
      return true;
    }
    return false;
  });
  $('#waitsave6').submit(function () {
    if (ck_input.value !== "") {
      $('#showload6').show();
      $('#hidden6').hide();
      return true;
    }
    return false;
  });
  $('#waitsave7').submit(function () {
    if (ck_input.value !== "") {
      $('#showload7').show();
      $('#hidden7').hide();
      return true;
    }
    return false;
  });
  $('#waitsave8').submit(function () {
    if (ck_input.value !== "") {
      $('#showload8').show();
      $('#hidden8').hide();
      return true;
    }
    return false;
  });
  $('#waitsave9').submit(function () {
    if (ck_input.value !== "") {
      $('#showload9').show();
      $('#hidden9').hide();
      return true;
    }
    return false;
  });
  $('#waitsave10').submit(function () {
    if (ck_input.value !== "") {
      $('#showload10').show();
      $('#hidden10').hide();
      return true;
    }
    return false;
  });
  //-----------------------------------------------

  // Check Form validation ------------------------
  window.addEventListener('load', function () {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function (form) {
      form.addEventListener('submit', function (event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
  //-----------------------------------------------

  // Folder guest -------------
  $('#edit_guest').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;
    $.ajax({
      type: "GET",
      url: "guest/edit/edit_guest.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.guest').html(data); // Find div form
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_guest_pic').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;
    $.ajax({
      type: "GET",
      url: "guest/edit/edit_guest_pic.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.pic').html(data); // Find div form
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_guest_room').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;
    $.ajax({
      type: "GET",
      url: "guest/edit/edit_guest_room.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.room').html(data); // Find div form
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_guest_list').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "guest/edit/edit_guest_list.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.guest_list').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });

  $('#edit_guest_list_pic').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;
    $.ajax({
      type: "GET",
      url: "guest/edit/edit_guest_list_pic.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.list_pic').html(data); // Find div form
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#genlink').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;
    $.ajax({
      type: "GET",
      url: "guest/genlink.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.link').html(data); // Find div form
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  //-----------------------------------------------

  // Folder Membres -------------------------------
  $('#edit_employee').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "employee/edit/edit_employee.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.employee').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });
  //-----------------------------------------------

  // Folder Service -------------------------------
  $('#show_case').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "service/show_case.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.show_case').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });

  $('#off_case').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "service/off_case.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.offcase').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });
  //-----------------------------------------------

  // Folder Asset -------------------------------

  $('#view').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "asset/view/view.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.view').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });

  $('#edit_detail').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "asset/edit/edit_asset.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_detail').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });

  $('#add_repair').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "asset/edit/add_repair.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.add_repair').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });

  $('#add_repair2').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "asset2/edit/add_repair.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.add_repair2').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });

  //------------------------------------------------

  // Folder Asset2 -------------------------------

  $('#view2').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "asset2/view/view.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.view').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });


  $('#edit_detail2').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "asset2/edit/edit_asset2.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_detail').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });

  $('#add_repair2').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "asset2/edit/add_repair.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.add_repair').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  });

  //------------------------------------------------

  

  // For setting ---------------------------------------
  $('#edit_prefix').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/edit_prefix.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_prefix').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_company').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/edit_company.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_company').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })



  $('#edit_department').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/edit_department.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_department').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })
  

  $('#edit_brand').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/edit_brand.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_brand').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_layout').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/edit_layout.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_layout').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_user').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/edit_user.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_user').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#access').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/access.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.access').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_type').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/edit_type.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_type').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_status').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/edit_status.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_status').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_service').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/edit_service.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_service').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_service_list').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "settings/edit/edit_service_list.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_service_list').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#showaccess_user').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "administrator/view/view_access.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.showaccess_user').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_menu').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "administrator/edit/edit_menu.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_menu').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_page').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "administrator/edit/edit_page.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_page').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })

  $('#edit_line').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    var modal = $(this);
    var dataString = 'key=' + recipient;

    $.ajax({
      type: "GET",
      url: "administrator/edit/edit_line.php",
      data: dataString,
      cache: false,
      success: function (data) {
        modal.find('.edit_line').html(data);
      },
      error: function (err) {
        console.log(err);
      }
    });
  })
  //----------------------------------------------------

  // Get Form -----------------------------------------



  //----------------------------------------------------


  // Toptitle -------------------------------------
  $(function () {
    $('[data-toggle="toptitle"]').tooltip()
  })
  $(function () {
    $('[data-top="toptitle"]').tooltip()
  })

});

// Reload Page ----------------------------------
function reloadPage() {
  window.location.reload();
}
function goback() {
  window.history.back();
}
// ----------------------------------------------

// Form Ajax get value --------------------------
function getroomList(val) {
  $.ajax({
    type: "POST",
    url: "getvalue/getroom.php",
    data: 'se_group=' + val,
    success: function (data) {
      $("#se_id").html(data);
    }
  });
}

function getroomList_edit(val) {
  $.ajax({
    type: "POST",
    url: "getvalue/getroom_edit.php",
    data: 'se_group_edit=' + val,
    success: function (data) {
      $("#se_id_edit").html(data);
    }
  });
}

function getroomListcheck(val) {
  $.ajax({
    type: "POST",
    url: "getvalue/getroom_check.php",
    data: 'building=' + val,
    success: function (data) {
      $("#floor").html(data);
    }
  });
}

function getroomListcheckroom(val) {
  $.ajax({
    type: "POST",
    url: "getvalue/getroom_check_room.php",
    data: 'floor=' + val,
    success: function (data) {
      $("#room").html(data);
    }
  });
}

function getroomListcheck_edit(val) {
  $.ajax({
    type: "POST",
    url: "getvalue/getroom_check_edit.php",
    data: 'building=' + val,
    success: function (data) {
      $("#floor").html(data);
    }
  });
}

function getroomListcheckroom_edit(val) {
  $.ajax({
    type: "POST",
    url: "getvalue/getroom_check_room_edit.php",
    data: 'floor=' + val,
    success: function (data) {
      $("#room").html(data);
    }
  });
}






// Function Delete All
function deletelist(list_key) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_list&key=" + list_key;
    }
  })
}

function deleteCard(cardkey) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_card&key=" + cardkey;
    }
  })
}

function deleteType(ctype_key) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_cardtype&key=" + ctype_key;
    }
  })
}

function deleteStatus(stype_key) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_status&key=" + stype_key;
    }
  })
}

function deleteEmployee(em_key) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_employee&key=" + em_key;
    }
  })
}

function deleteasset(asset_key) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_asset&key=" + asset_key;
    }
  })
}

function deleteasset2(asset_key) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_asset2&key=" + asset_key;
    }
  })
}

function deletePrefix(prefix) {
  Swal.fire({
    title: 'คุณต้องการลบคำนำหน้านามนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_prefix&key=" + prefix;
    }
  })
}

function deleteprint(printkey) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_print&key=" + printkey;
    }
  })
}

function nousing_service_li(se_li_id) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_service_li&key=" + se_li_id;
    }
  })
}

function delete_guest(key_guest) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_guest&key=" + key_guest;
    }
  })
}

function delete_menu(menu_key) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_menu&key=" + menu_key;
    }
  })
}

function delect_link(id_link) {
  Swal.fire({
    title: 'ต้องการลบข้อมูลนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_case&key=" + id_link;
    }
  })
}

function changeUsingcompany(companykey) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + companykey);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + companykey).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + companykey).className = 'fa fa-lock';
        document.getElementById('text-' + companykey).innerHTML = 'ซ่อน';
      } else {
        document.getElementById('btn-' + companykey).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + companykey).className = 'fa fa-unlock-alt';
        document.getElementById('text-' + companykey).innerHTML = 'แสดง';
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_using_company&key=" + companykey + "&sts=" + sts, true);
  xmlhttp.send();
}

function changeUsingprefix(prefix_key) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + prefix_key);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + prefix_key).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + prefix_key).className = 'fa fa-lock';
        document.getElementById('text-' + prefix_key).innerHTML = 'ซ่อน';
      } else {
        document.getElementById('btn-' + prefix_key).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + prefix_key).className = 'fa fa-unlock-alt';
        document.getElementById('text-' + prefix_key).innerHTML = 'แสดง';
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_prefix&key=" + prefix_key + "&sts=" + sts, true);
  xmlhttp.send();
}

function changeUsingdep(department) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + department);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + department).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + department).className = 'fa fa-lock';
        document.getElementById('text-' + department).innerHTML = 'ซ่อน';
      } else {
        document.getElementById('btn-' + department).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + department).className = 'fa fa-unlock-alt';
        document.getElementById('text-' + department).innerHTML = 'แสดง';
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_using_dep&key=" + department + "&sts=" + sts, true);
  xmlhttp.send();
}

function deleteDepartment(department) {
  Swal.fire({
    title: 'คุณต้องการลบแผนกนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_department&key=" + department;
    }
  })
}

function changeUsingbrand(brand) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + brand);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + brand).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + brand).className = 'fa fa-lock';
        document.getElementById('text-' + brand).innerHTML = 'ซ่อน';
      } else {
        document.getElementById('btn-' + brand).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + brand).className = 'fa fa-unlock-alt';
        document.getElementById('text-' + brand).innerHTML = 'แสดง';
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_using_brand&key=" + brand + "&sts=" + sts, true);
  xmlhttp.send();
}

function deleteBrand(brand) {
  Swal.fire({
    title: 'คุณต้องการลบยี่ห้อนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_brand&key=" + brand;
    }
  })
}

function changeUsinglayout(layout) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + layout);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + layout).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + layout).className = 'fa fa-lock';
        document.getElementById('text-' + layout).innerHTML = 'ซ่อน';
      } else {
        document.getElementById('btn-' + layout).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + layout).className = 'fa fa-unlock-alt';
        document.getElementById('text-' + layout).innerHTML = 'แสดง';
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_using_layout&key=" + layout + "&sts=" + sts, true);
  xmlhttp.send();
}

function changeUserStatus(userkey) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + userkey);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + userkey).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + userkey).className = 'fa fa-user-lock';
        document.getElementById('text-' + userkey).innerHTML = ''; //ปิด
      } else {
        document.getElementById('btn-' + userkey).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + userkey).className = 'fa fa-user-clock';
        document.getElementById('text-' + userkey).innerHTML = ''; //เปิด
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_user_status&key=" + userkey + "&sts=" + sts, true);
  xmlhttp.send();
}

function changeTypeStatus(typekey) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + typekey);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + typekey).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + typekey).className = 'fa fa-eye-slash';
        document.getElementById('text-' + typekey).innerHTML = ''; //ปิด
      } else {
        document.getElementById('btn-' + typekey).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + typekey).className = 'fa fa-eye';
        document.getElementById('text-' + typekey).innerHTML = ''; //เปิด
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_cardtype_status&key=" + typekey + "&sts=" + sts, true);
  xmlhttp.send();
}

function changeStatus(typekey) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + typekey);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + typekey).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + typekey).className = 'fa fa-eye-slash';
        document.getElementById('text-' + typekey).innerHTML = ''; //ปิด
      } else {
        document.getElementById('btn-' + typekey).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + typekey).className = 'fa fa-eye';
        document.getElementById('text-' + typekey).innerHTML = ''; //เปิด
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_status&key=" + typekey + "&sts=" + sts, true);
  xmlhttp.send();
}

function UseService(se_id) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + se_id);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + se_id).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + se_id).className = 'fa fa-eye-slash';
        document.getElementById('text-' + se_id).innerHTML = ''; //ปิด
      } else {
        document.getElementById('btn-' + se_id).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + se_id).className = 'fa fa-eye';
        document.getElementById('text-' + se_id).innerHTML = ''; //เปิด
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=using_service&key=" + se_id + "&sts=" + sts, true);
  xmlhttp.send();
}

function Accesslock(access_key) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + access_key);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + access_key).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + access_key).className = 'fa fa-lock';
        document.getElementById('text-' + access_key).innerHTML = ''; //ปิด
      } else {
        document.getElementById('btn-' + access_key).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + access_key).className = 'fa fa-unlock';
        document.getElementById('text-' + access_key).innerHTML = ''; //เปิด
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_access_status&key=" + access_key + "&sts=" + sts, true);
  xmlhttp.send();
}

function Menulock(menu_key) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + menu_key);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + menu_key).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + menu_key).className = 'fa fa-lock';
        document.getElementById('text-' + menu_key).innerHTML = ''; //ปิด
      } else {
        document.getElementById('btn-' + menu_key).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + menu_key).className = 'fa fa-unlock';
        document.getElementById('text-' + menu_key).innerHTML = ''; //เปิด
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_menu_status&key=" + menu_key + "&sts=" + sts, true);
  xmlhttp.send();
}

function DisabledLink(id) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + id);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + id).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + id).className = 'fa fa-lock';
        document.getElementById('text-' + id).innerHTML = ''; //ปิด
      } else {
        document.getElementById('btn-' + id).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + id).className = 'fa fa-unlock';
        document.getElementById('text-' + id).innerHTML = ''; //เปิด
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_case_status&key=" + id + "&sts=" + sts, true);
  xmlhttp.send();
}


function changeUsingdevice(device) {
  if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  var es = document.getElementById('btn-' + device);
  if (es.className == 'btn btn-success btn-sm') {
    var sts = 1;
  } else {
    var sts = 0;
  }
  xmlhttp.onreadystatechange = function () {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

      if (es.className == 'btn btn-success btn-sm') {
        document.getElementById('btn-' + device).className = 'btn btn-danger btn-sm';
        document.getElementById('icon-' + device).className = 'fa fa-lock';
        document.getElementById('text-' + device).innerHTML = 'ซ่อน';
      } else {
        document.getElementById('btn-' + device).className = 'btn btn-success btn-sm';
        document.getElementById('icon-' + device).className = 'fa fa-unlock-alt';
        document.getElementById('text-' + device).innerHTML = 'แสดง';
      }
    }
  }

  xmlhttp.open("GET", "function.php?type=change_using_device&key=" + device + "&sts=" + sts, true);
  xmlhttp.send();
}

$('#edit_device').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  var modal = $(this);
  var dataString = 'key=' + recipient;

  $.ajax({
    type: "GET",
    url: "settings/edit/edit_device.php",
    data: dataString,
    cache: false,
    success: function (data) {
      modal.find('.edit_device').html(data);
    },
    error: function (err) {
      console.log(err);
    }
  });
})

function deleteDevice(device) {
  Swal.fire({
    title: 'คุณต้องการลบอุปกรณ์นี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_device&key=" + device;
    }
  })
}

function deleteCompany(company) {
  Swal.fire({
    title: 'คุณต้องการลบบริษัทนี้ใช่หรือไม่',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'ยืนยันการลบ',
    cancelButtonText: 'ยกเลิก'
  }).then((result) => {
    if (result.value) {
      Swal.fire({
        title: "Deleted !!!",
        html: "<h4>กำลังลบข้อมูล...</h4>",
        showConfirmButton: false
      })
      window.location = "function.php?type=delete_company&key=" + company;
    }
  })
}