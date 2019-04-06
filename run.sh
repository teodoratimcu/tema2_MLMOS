    
#!/bin/bash
docker build --tag wumpus .
docker run -p 57575:57575 -it wumpus
