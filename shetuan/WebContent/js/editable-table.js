var EditableTable = function () {

    return {

        //main function to initiate the module
        init: function () {
            function restoreRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);

                for (var i = 0, iLen = jqTds.length; i < iLen; i++) {
                    oTable.fnUpdate(aData[i], nRow, i, false);
                }

                oTable.fnDraw();
            }

            function editRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);
                innerHTML = '<form name="form1" method="post" action="NewFile1.jsp">';
                jqTds[0].innerHTML = '<input type="text" style="width: 100%;" name="0" class="form-control small" value="' + aData[0] + '">';
                jqTds[1].innerHTML = '<input type="text" style="width: 100%;" name="id" class="form-control small" value="' + aData[1] + '">';
                jqTds[2].innerHTML = '<input type="text" style="width: 100%;" name="shenbu" class="form-control small" value="' + aData[2] + '">';
                jqTds[3].innerHTML = '<input type="text" style="width: 100%;" name="3" class="form-control small" value="' + aData[3] + '">';
                jqTds[4].innerHTML = '<input type="text" style="width: 100%;" name="4" class="form-control small" value="' + aData[4] + '">';
                jqTds[5].innerHTML = '<input type="text" style="width: 100%;" name="5" class="form-control small" value="' + aData[5] + '">';
                jqTds[6].innerHTML = '<input type="text" style="width: 100%;" name="6" class="form-control small" value="' + aData[6] + '">';
                jqTds[7].innerHTML = '<input type="text" style="width: 100%;" name="7" class="form-control small" value="' + aData[7] + '">';
                jqTds[8].innerHTML = '<input type="text" style="width: 100%;" name="8" class="form-control small" value="' + aData[8] + '">';
            
                jqTds[10].innerHTML = '<a class="edit" style="width: 100%;" href="#" id="btnA">Save</a>';
                jqTds[11].innerHTML = '<a class="cancel" style="width: 100%;" href="">Cancel</a>';
                innerHTML = '</form>';
            }

            function saveRow(oTable, nRow) {
                var jqInputs = $('input', nRow);
                oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate(jqInputs[1].value, nRow, 1, false);
                oTable.fnUpdate(jqInputs[2].value, nRow, 2, false);
                oTable.fnUpdate(jqInputs[3].value, nRow, 3, false);
                oTable.fnUpdate(jqInputs[4].value, nRow, 4, false);
                oTable.fnUpdate(jqInputs[5].value, nRow, 5, false);
                oTable.fnUpdate(jqInputs[6].value, nRow, 6, false);
                oTable.fnUpdate(jqInputs[7].value, nRow, 7, false);  
                oTable.fnUpdate(jqInputs[8].value, nRow, 8, false);
                oTable.fnUpdate('<a class="edit" href="">Edit</a>', nRow, 9, false);
                oTable.fnUpdate('<a class="delete" href="">Delete</a>', nRow, 10, false);
                oTable.fnDraw();
            }

            function cancelEditRow(oTable, nRow) {
                var jqInputs = $('input', nRow);
                oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
                oTable.fnUpdate(jqInputs[1].value, nRow, 1, false);
                oTable.fnUpdate(jqInputs[2].value, nRow, 2, false);
                oTable.fnUpdate(jqInputs[3].value, nRow, 3, false);
                oTable.fnUpdate(jqInputs[4].value, nRow, 4, false);
                oTable.fnUpdate(jqInputs[5].value, nRow, 5, false);
                oTable.fnUpdate(jqInputs[6].value, nRow, 6, false);
                oTable.fnUpdate(jqInputs[7].value, nRow, 7, false);
                oTable.fnUpdate(jqInputs[8].value, nRow, 8, false);
                oTable.fnUpdate('<a class="edit" href="">Edit</a>', nRow, 9, false);
                oTable.fnDraw();
            }

            var oTable = $('#editable-sample').dataTable({
                "aLengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "All"] // change per page values here
                ],
                // set the initial value
                "iDisplayLength": 10,
                "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>",
                "sPaginationType": "bootstrap",
                "oLanguage": {
                    "sLengthMenu": "_MENU_ records per page",
                    "oPaginate": {
                        "sPrevious": "Prev",
                        "sNext": "Next"
                    }
                },
                "aoColumnDefs": [{
                        'bSortable': false,
                        'aTargets': [0]
                    }
                ]
            });

            jQuery('#editable-sample_wrapper .dataTables_filter input').addClass("form-control medium"); // modify table search input
            jQuery('#editable-sample_wrapper .dataTables_length select').addClass("form-control xsmall"); // modify table per page dropdown

            var nEditing = null;
            //ajax start
            $(document).ready(function(){
				$("#ajax").mousedown(function(){
					ajax();
				});
			});
			function ajax(){
				var name=$("#0").val();
				var id=$("#1").val();
				var shengbu=$("#2").val();
				var xueyuan=$("#3").val();
				var chuqin=$("#4").val();
				var yinliang=$("#5").val();
				var yinse=$("#6").val();
				var yinzhun=$("#7").val();
				var email=$("#8").val();
				$.ajax({
					type:"post",
					url:"NewFile.jsp",
					dateType:"String",
					data:"name="+name,
					success:function(json){
						alert("111");
					}
				});
			}
			//ajax end
			
			$(function(){
                $("#btnA").click(function(){
                    $("#myForm").submit();
                });
            });
			
            $('#editable-sample_new').click(function (e) {
                e.preventDefault();
                var aiNew = oTable.fnAddData(['', '', '', '', '', '', '', '', '',
                        '<a class="edit" href="">Edit</a>', '<a class="cancel" data-mode="new" href="">Cancel</a>'
                ]);
                var nRow = oTable.fnGetNodes(aiNew[0]);
                editRow(oTable, nRow);
                nEditing = nRow;
            });

            $('#editable-sample a.delete').live('click', function (e) {
                e.preventDefault();

                if (confirm("Are you sure to delete this row ?") == false) {
                    return;
                }

                var nRow = $(this).parents('tr')[0];
                oTable.fnDeleteRow(nRow);
                alert("Deleted! Do not forget to do some ajax to sync with backend :)");
            });

            $('#editable-sample a.cancel').live('click', function (e) {
                e.preventDefault();
                if ($(this).attr("data-mode") == "new") {
                    var nRow = $(this).parents('tr')[0];
                    oTable.fnDeleteRow(nRow);
                } else {
                    restoreRow(oTable, nEditing);
                    nEditing = null;
                }
            });

            $('#editable-sample a.edit').live('click', function (e) {
                e.preventDefault();

                /* Get the row as a parent of the link that was clicked on */
                var nRow = $(this).parents('tr')[0];

                if (nEditing !== null && nEditing != nRow) {
                    /* Currently editing - but not this row - restore the old before continuing to edit mode */
                    restoreRow(oTable, nEditing);
                    editRow(oTable, nRow);
                    nEditing = nRow;
                } else if (nEditing == nRow && this.innerHTML == "Save") {
                    /* Editing this row and want to save it */
                    saveRow(oTable, nEditing);
                    
                    nEditing = null;
                    alert("Updated! Do not forget to do some ajax to sync with backend :)");
                } else {
                    /* No edit in progress - let's start one */
                    editRow(oTable, nRow);
                    nEditing = nRow;
                }
            });
        }

    };

}();