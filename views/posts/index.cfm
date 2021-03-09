<cfoutput>
    <h1>Posts</h1>
    <a href="#event.buildLink( "posts.new" )#">Write a new post</a>
    <cfif prc.posts.isEmpty()>
        <div class="card mb-3">
            <div class="card-body">
                <p class="card-text">No posts yet.</p>
            </div>
        </div>
    <cfelse>
        <cfloop array="#prc.posts#" index="post">
            <div class="card mb-3">
                <div class="card-body">
                    <a href="#event.buildLink( "posts.#post.getID()#" )#">
                        <h5 class="card-title">#post.getTitle()#</h5>
                    </a>
                    <h6 class="card-subtitle">By #post.getAuthor().getFullName()#</h6>
                    <p class="card-text">#post.getBody()#</p>
                </div>
            </div>
        </cfloop>
    </cfif>
</cfoutput>