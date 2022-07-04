<jsp:include page="cheader.jsp"></jsp:include>
    <div class="card p-2 m-2 shadow">
        <div class="card-body">
            <h5 class="p-2" style="border-bottom: 2px solid orange;">Change Password</h5>
            <div class="row">
                <div class="col-sm-4 mx-auto mt-3">
                    <form method="post">
                        <div class="form-group">
                            <label>Current Password</label>
                            <input type="password" name="opwd" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>New Password</label>
                            <input type="password" name="pwd" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Repeat Password</label>
                            <input type="password" name="cpwd" class="form-control">
                        </div>
                        <input type="submit" value="Update Password" class="btn btn-primary">
                    </form>
                    <jsp:include page="msg.jsp"></jsp:include>
                </div>
            </div>
            
        </div>
    </div>
<jsp:include page="cfooter.jsp"></jsp:include>