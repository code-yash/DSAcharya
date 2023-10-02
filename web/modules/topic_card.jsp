
<% 
    
    int completedpercent = (mdao.getMarkedQuestionsCountTopic(user.getId(),"Array") * 100)/ qdao.getTotalQuestionsCountTopic("Array");
    
%>

<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="our_solution_category">
            <div class="solution_cards_box">
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Array") * 100) / qdao.getTotalQuestionsCountTopic("Array")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Array") * 100) / qdao.getTotalQuestionsCountTopic("Array")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Array</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 36 <br>
                            Easy - 15 <br>
                            Medium - 13 <br>
                            Hard - 8 <br>
                        </p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=Array';">Solve Now</button>
                    </div>
                </div>
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Matrix") * 100) / qdao.getTotalQuestionsCountTopic("Array")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Matrix") * 100) / qdao.getTotalQuestionsCountTopic("Matrix")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Matrix</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 10 <br>
                            Easy - 5 <br>
                            Medium - 3 <br>
                            Hard - 2 <br> </p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=Matrix';">Solve Now</button>
                    
                    </div>
                </div>
            </div>
            <!--  -->
            <div class="solution_cards_box sol_card_top_3">
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "String") * 100) / qdao.getTotalQuestionsCountTopic("String")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "String") * 100) / qdao.getTotalQuestionsCountTopic("String")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>String</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 43 <br>
                            Easy - 20 <br>
                            Medium - 13 <br>
                            Hard - 10 <br></p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=String';">Solve Now</button>
                    
                    </div>
                </div>
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "SearchingSort") * 100) / qdao.getTotalQuestionsCountTopic("SearchingSort")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "SearchingSort") * 100) / qdao.getTotalQuestionsCountTopic("SearchingSort")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Search and Sort</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 36 <br>
                            Easy - 15 <br>
                            Medium - 13 <br>
                            Hard - 8 <br></p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=SearchingSort';">Solve Now</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="our_solution_category">
            <div class="solution_cards_box">
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "LinkedList") * 100) / qdao.getTotalQuestionsCountTopic("LinkedList")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "LinkedList") * 100) / qdao.getTotalQuestionsCountTopic("LinkedList")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Linked List</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 36 <br>
                            Easy - 15 <br>
                            Medium - 13 <br>
                            Hard - 8 <br></p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=LinkedList';">Solve Now</button>
                    </div>
                </div>
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                     <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "BinaryTrees") * 100) / qdao.getTotalQuestionsCountTopic("BinaryTrees")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "BinaryTrees") * 100) / qdao.getTotalQuestionsCountTopic("BinaryTrees")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Binary Trees</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 35 <br>
                            Easy - 15 <br>
                            Medium - 12 <br>
                            Hard - 8 <br></p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=BinaryTrees';">Solve Now</button>
                    </div>
                </div>
            </div>
            <!--  -->
            <div class="solution_cards_box sol_card_top_3">
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "BinarySearchTrees") * 100) / qdao.getTotalQuestionsCountTopic("BinarySearchTrees")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "BinarySearchTrees") * 100) / qdao.getTotalQuestionsCountTopic("BinarySearchTrees")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Binary Search Tree</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 36 <br>
                            Easy - 14 <br>
                            Medium - 11 <br>
                            Hard - 7 <br>
                            </p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=BinarySearchTrees';">Solve Now</button>
                    </div>
                </div>
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Greedy") * 100) / qdao.getTotalQuestionsCountTopic("Greedy")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Greedy") * 100) / qdao.getTotalQuestionsCountTopic("Greedy")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Greedy</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 35 <br>
                            Easy - 15 <br>
                            Medium - 12 <br>
                            Hard - 8 <br></p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=Greedy';">Solve Now</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="our_solution_category">
            <div class="solution_cards_box">
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "BackTracking") * 100) / qdao.getTotalQuestionsCountTopic("BackTracking")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "BackTracking") * 100) / qdao.getTotalQuestionsCountTopic("BackTracking")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Backtracking</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 19 <br>
                            Easy - 7 <br>
                            Medium - 8 <br>
                            Hard - 4 <br></p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=BackTracking';">Solve Now</button>
                    </div>
                </div>
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "StackQueues") * 100) / qdao.getTotalQuestionsCountTopic("StackQueues")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "StackQueues") * 100) / qdao.getTotalQuestionsCountTopic("StackQueues")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Stack and Queues</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 38 <br>
                            Easy - 15 <br>
                            Medium - 14 <br>
                            Hard - 8 <br></p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=StackQueues';">Solve Now</button>
                    </div>
                </div>
            </div>
            <!--  -->
            <div class="solution_cards_box sol_card_top_3">
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Heap") * 100) / qdao.getTotalQuestionsCountTopic("Heap")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Heap") * 100) / qdao.getTotalQuestionsCountTopic("Heap")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Heap</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 18 <br>
                            Easy - 8 <br>
                            Medium - 5 <br>
                            Hard - 5 <br>
                            </p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=Heap';">Solve Now</button>
                    </div>
                </div>
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Graph") * 100) / qdao.getTotalQuestionsCountTopic("Graph")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Graph") * 100) / qdao.getTotalQuestionsCountTopic("Graph")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Graph</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 44 <br>
                            Easy - 15 <br>
                            Medium - 12 <br>
                            Hard - 16 <br></p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=Graph';">Solve Now</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="our_solution_category">
            <div class="solution_cards_box">
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Trie") * 100) / qdao.getTotalQuestionsCountTopic("Trie")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Trie") * 100) / qdao.getTotalQuestionsCountTopic("Trie")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Trie</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 6 <br>
                            Easy - 0 <br>
                            Medium - 2 <br>
                            Hard - 4 <br></p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=Trie';">Solve Now</button>
                    </div>
                </div>
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "DynamicProgramming") * 100) / qdao.getTotalQuestionsCountTopic("DynamicProgramming")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "DynamicProgramming") * 100) / qdao.getTotalQuestionsCountTopic("DynamicProgramming")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>DP</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 60 <br>
                            Easy - 15 <br>
                            Medium - 20 <br>
                            Hard - 15 <br></p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=DynamicProgramming';">Solve Now</button>
                    </div>
                </div>
            </div>
            <!--  -->
            <div class="solution_cards_box sol_card_top_3">
                <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "BitManipulation") * 100) / qdao.getTotalQuestionsCountTopic("BitManipulation")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "BitManipulation") * 100) / qdao.getTotalQuestionsCountTopic("BitManipulation")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Bit Manipulation</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 10 <br>
                            Easy - 6 <br>
                            Medium - 4 <br>
                            Hard - 0 <br>
                            </p>
                        <button type="button" class="read_more_btn" onclick="window.location.href='question.jsp?topic=BitManipulation';">Solve Now</button>
                    </div>
                </div>
                    <div class="solution_card">
                    <div class="hover_color_bubble"></div>
                    <div class="so_top_icon" style="width:90px; height:90px; margin:5px">

                        <section class="svg-container">
                            <svg class="radial-progress" data-countervalue="<%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Trie") * 100) / qdao.getTotalQuestionsCountTopic("Trie")%>" viewBox="0 0 80 80">
                            <circle class="bar-static" cx="40" cy="40" r="35"></circle>
                            <circle class="bar--animated" cx="40" cy="40" r="35" style="stroke-dashoffset: 217.8;"></circle>
                            <text class="countervalue start" x="50%" y="57%" transform="matrix(0, 1, -1, 0, 80, 0)"><%= (mdao.getMarkedQuestionsCountTopic(user.getId(), "Trie") * 100) / qdao.getTotalQuestionsCountTopic("Trie")%></text>
                            </svg>
                        </section>
                    </div>
                    <div class="solu_title">
                        <h3>Miscellaneous</h3>
                    </div>
                    <div class="solu_description">
                        <p>
                            Total Questions - 10 <br>
                            Easy - 5 <br>
                            Medium - 5 <br>
                            Hard - 5 <br></p>
                        <button type="button" class="read_more_btn"onclick="window.location.href='question.jsp?topic=Trie';">Solve Now</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>