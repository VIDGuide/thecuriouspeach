<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/peach/Peach.Master" CodeBehind="NewEntry.aspx.vb" Inherits="TheCuriousPeach.NewEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">

        <div class="container-fluid">
            <h1>Add New Entry</h1>
            <div class="row">
                <div class="col-md-10 col-md-offset-1">


                    <p class="well well-lg">
                        Adding a new entry is very simple. If you're doing it live, the defaults should already have the current date and time for the start. Hit the start timer button to time your session.<br />
                        <br />
                        Then, tag in some extra details about this session. Select the type, tag in mental stimulation, partners, locations, and orgasms, as appropriate. You only need to tag in what is relevant, but the more you tag, the more statistics and data you will grow.<br />
                        <br />
                        You can use the Curious Peach to track simple statistics only, like when and how many, or you can go into deeper depths with tags about who with, where you were, what you thought about, toys and porn and much more. Use custom tag words (remembered for future re-use), or use the built in options to get started.
                    </p>
                </div>
            </div>
            <form method="post">
                <div class="form-group" style="margin-top: 25px;">
                    <div class="row">
                        <div class="col-sm-1 col-sm-offset-1">
                            <label style="margin-top: 15px;" class="control-label" for="Email">Event Date:</label>
                        </div>
                        <div class="col-sm-3">
                            <input title="Enter the date this event occurred" required="required" name="EventDTM" id="EventDTM" type="date" class="form-control" style="margin-top: 10px;" />
                        </div>
                        <div class="col-sm-6">
                            <div class="well">Select a date to record previous data, or leave as todays for a live event.</div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-1 col-sm-offset-1">
                            <label style="margin-top: 15px;" class="control-label" for="Email">Start Time:</label>
                        </div>
                        <div class="col-sm-3">
                            <input title="Enter the time this event started" required="required" name="StartTime" id="StartTime" type="time" class="form-control" style="margin-top: 10px;" />
                        </div>
                        <div class="col-sm-6">
                            <div class="well">Select the start time to record previous data. </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-1 col-sm-offset-1">
                            <label style="margin-top: 15px;" class="control-label" for="Email">End Time:</label>
                        </div>
                        <div class="col-sm-2">
                            <input title="Enter the time this event ended" required="required" name="EndTime" id="EndTime" type="time" class="form-control" style="margin-top: 10px;" />
                        </div>
                        <div class="col-sm-1 text-center">
                            <a onclick="TimerToggle();" id="TimerButton" class="btn btn-primary btn-info btn-sm">Start Timer</a><br />
                            <span id="time">0:00:00</span>
                        </div>
                        
                    <div class="col-sm-6">
                        <div class="well">Select the end time to record previous data, or press the Start Recording button to start a timer. </div>
                    </div>
                </div>
                    <div class="row">
                        <div class="col-sm-1 col-sm-offset-1">
                            <label style="margin-top: 15px;" class="control-label" for="Email">Event Type:</label>
                        </div>
                        <div class="col-sm-3">
                            <select id="EventType" required="required" class="form-control" runat="server"></select>
                        </div>
                        <div class="col-sm-6">
                            <div class="well">Select the type of event/session you are recording. This allows the data to be processed for later comparison.</div>
                        </div>
                    </div>
        </div>
        </form>
    </div>
    </div>
    <script>
        var date = new Date().toISOString().substring(0, 10);
        var time = (new Date()).toTimeString().split(' ')[0];
        $('#EventDTM').val(date);
        $('#StartTime').val(time);

        function TimerToggle() {
            if ($('#TimerButton').text() == 'Start Timer') {
                StartTimer()
            } else {
                StopTimer()
            }
        }

        function StartTimer() {
            var OkToOverWrite = true;
            if ($('#EndTime').val() == "") {
                if (confirm("Are you sure you wish to start a new timer and overwrite the previous value?")) {
                    OkToOverWrite = true;
                } else {
                    OkToOverWrite = false;
                }
            }
            if (OkToOverWrite) {
                $('#TimerButton').text('Stop Timer');
                var time = (new Date()).toTimeString().split(' ')[0];
                var date = new Date().toISOString().substring(0, 10);
                $('#StartTime').val(time);
                $('#EventDTM').val(date);
                reset();
                start();
            }
        }

        function StopTimer() {
            $('#TimerButton').text('Start Timer');
            stop();


            var EndtimeObj = (new Date($('#EventDTM').val() + " " + $('#StartTime').val()));
            var Endtime = new Date(EndtimeObj.getTime() + x.time()).toTimeString().split(' ')[0];
            $('#EndTime').val(Endtime);
        }
        
    </script>
    <script src="../Scripts/Stopwatch.js"></script>
</asp:Content>
