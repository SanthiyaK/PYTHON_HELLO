pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/SanthiyaK/PYTHON_HELLO.git'
            }
        }

        stage('Setup & Run Flask') {
            steps {
                sh '''
# Go to project directory
cd /var/lib/jenkins/workspace/dev

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi

# Activate virtual environment using POSIX-compliant command
. venv/bin/activate

# Upgrade pip and install Flask
pip install --upgrade pip
pip install flask

# Run Flask app in the background
nohup python app.py > flask.log 2>&1 &
sudo systemctl restart flask_app
echo "Flask app is running in the background."
'''
            }
        }
    }
}
