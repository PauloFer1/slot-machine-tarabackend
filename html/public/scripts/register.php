 <!-- ****************** CONTENT **************** -->
                    <article class="content-container">

                        <img src="<? echo(URL_PUBLIC); ?>public/themes/default/_img/slotmachine.png" id="slotmachine" alt="" />
                        <div class="clear2"></div>
                        <!-- ************** INICIO **************** -->
                        <!--
                        <div class="clear40"></div>
                        <button class="classname" id="entrar">ENTRAR</button>
                        -->
                        <!-- ************** WAIT **************** -->
                        <!--
                        <div class="clear40"></div>
                        <h3>AGUARDA A TUA VEZ!</h3>
                        -->
                        <!-- ************** FORM **************** -->
                        <form>
                            <input type="hidden" class="input" id="unique_id" value="<? echo($_GET['id']); ?>">
                            <section class="form-side">
                                <label for="name">
                                    <div class="left hide320"></div>
                                    <div class="span" id="name">
                                        <span>Nome</span>
                                        <img src="<? echo(URL_PUBLIC); ?>public/themes/default/_img/nome.png" alt="" />
                                    </div>
                                    <div class="right hide320"></div>
                                </label>
                                <div class="clear0"></div>
                                <input type="text" class="input" id="nameInput" value="">
                                <div class="clear20 hide1280"></div>
                            </section>
                            <div class="clear4"></div>
                            <section class="form-side">
                                <label for="email">
                                    <div class="left hide320"></div>
                                    <div class="span" id="email">
                                        <span>Email</span>
                                        <img src="<? echo(URL_PUBLIC); ?>public/themes/default/_img/email.png" alt="" />
                                    </div>
                                    <div class="right hide320"></div>
                                </label>
                                <div class="clear0"></div>
                                <input type="email" class="input" id="emailInput" value="">
                            </section>
                            <div class="clear3"></div>
                            <input type="submit" class="classname" id="submit" value="REGISTAR">
                        </form>
                        <!-- ************** RODAR **************** -->
                        <!--
                        <div class="clear40"></div>
                        <button class="classname" id="rodar">RODAR</button>
                        -->
                    </article>