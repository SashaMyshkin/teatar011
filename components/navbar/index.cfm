<cfinclude template="txt.cfm">

<style>
    .nav-link{
        color: var(--gold-main)!important;
    }

    .navbar {
            background-color: #111;
    }

    .star {
        background: linear-gradient(-45deg, rgba(255,255,255,0) 0%, rgba(255,255,255,1) 100%);
        animation: shine 1s infinite alternate;
    }

    @keyframes shine {
        0% {
            box-shadow: 0 0 2px 2px rgba(255, 255, 255, 0.5);
        }
        100% {
            box-shadow: 0 0 10px 5px rgba(255, 255, 255, 0.5);
        }
    }
</style>

<cfoutput>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-sm navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/">
                <img src="/assets/img/logo.png" alt="Avatar Logo" style="width:45px;" class="rounded-pill star"> 
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="##navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
                <ul class="navbar-nav ml-auto text-center">
                    <li class="nav-item active">
                        <a class="nav-link" href="/">#txtHome#</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/predstave/index.cfm">#txtPlays#</a>
                    </li>
                </ul>
                <ul class="navbar-nav text-center">
                    <cfif session.defaultScript neq "sr-Cyrl">
                        <li class="nav-item">
                            <a class="nav-link" href="index.cfm?defaultScript=sr-Cyrl"> #txtCyrillic# </a>
                        </li>
                    </cfif>
                    <cfif session.defaultScript neq "sr-Latn">
                        <li class="nav-item">
                            <a class="nav-link" href="index.cfm?defaultScript=sr-Latn"> #txtLatin# </a>
                        </li>
                    </cfif>
                    <cfif session.defaultScript neq "en">
                        <li class="nav-item">
                            <a class="nav-link" href="index.cfm?defaultScript=en"> #txtEnglish# </a>
                        </li>
                    </cfif>  
                </ul>
            </div>
        </div>
    </nav>
    <div style="height:70px"></div>
</cfoutput>