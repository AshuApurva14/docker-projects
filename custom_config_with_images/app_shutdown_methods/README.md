# app shutdown methods

- Many applications needs graceful shutdown otherwise it 
  will be killed by the system.
- Containers should be shut down gracefully and for this to 
  happen,the system should get a signal when to shutdown the containers.
- There are many ways to do this:

  1. 