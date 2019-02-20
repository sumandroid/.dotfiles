export PATH="/usr/local/opt/mongodb@3.4/bin:$PATH"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/test/google-cloud-sdk/path.bash.inc' ]; then source '/Users/test/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/test/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/test/google-cloud-sdk/completion.bash.inc'; fi
function brc {
    kubectl --namespace=prod exec -it `kubectl --namespace=prod get pods | grep -m 1 grabonrent-blr | awk '{print $1;}'` -- bash -c 'cd gor_refactored && rvm-exec 2.3.3 rails c'
}
function bs {
    kubectl --namespace=prod exec -it `kubectl --namespace=prod get pods | grep -m 1 grabonrent-blr | awk '{print $1;}'` -- bash
}
function mrc {
    kubectl --namespace=prod exec -it `kubectl --namespace=prod get pods | grep -m 1 grabonrent-mum | awk '{print $1;}'` -- bash -c 'cd gor_refactored && rvm-exec 2.3.3 rails c'
}
function ms {
    kubectl --namespace=prod exec -it `kubectl --namespace=prod get pods | grep -m 1 grabonrent-mum | awk '{print $1;}'` -- bash
}
function hrc {
    kubectl --namespace=prod exec -it `kubectl --namespace=prod get pods | grep -m 1 grabonrent-hyd | awk '{print $1;}'` -- bash -c 'cd gor_refactored && rvm-exec 2.3.3 rails c'
}
function hs {
    kubectl --namespace=prod exec -it `kubectl --namespace=prod get pods | grep -m 1 grabonrent-hyd | awk '{print $1;}'` -- bash
}
function grc {
    kubectl --namespace=prod exec -it `kubectl --namespace=prod get pods | grep -m 1 grabonrent-ggn | awk '{print $1;}'` -- bash -c 'cd gor_refactored && rvm-exec 2.3.3 rails c'
}
function gs {
    kubectl --namespace=prod exec -it `kubectl --namespace=prod get pods | grep -m 1 grabonrent-ggn | awk '{print $1;}'` -- bash
}
function stage {
        kubectl config use-context gke_grabonrent-gor_asia-south1-a_gor-stage
}
function prod {
        kubectl config use-context gke_grabonrent-gor_asia-south1-a_kube-grabonrent
}
function spods {
    kubectl --namespace=stage get pods
}
function ppods {
    kubectl --namespace=prod get pods
}
export PATH=$PATH:/usr/local/Cellar/openvpn/2.4.0/sbin

function rc {
        rails c
}

function rs {
        rails s -p 3001
}
alias mvim='/Applications/MacVim.app/Contents/bin/mvim'

alias ssh-aalgro-server="ssh -i ~/.ssh/dev-aalgro.pem ubuntu@18.224.168.73" 
