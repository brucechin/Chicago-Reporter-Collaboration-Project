You can run code/extract_data.sql to get the training and testing data, which is already prepared at the same folder in csv format.

you can map the codes to corresponding questions easily by their file name.

**Before you reproduce using our code:**

1. In the following machine learning model training and testing questions, we use sklearn.train_test_split and the test_size is set as 0.3.

2. Because train_test_split gives different training and testing dataset everytime, when you try to reproduce the testing procedures, **the prediction error may differ a little from ours**.

3. **run pip install -r requirement.txt** to install all library dependencies.

4. please note we have a decision tree visualization part in question 1,2,3 code. This part needs **GraphViz-2.3.8** software installed on your computer. If you only install its python library, you will meet an error **"graphviz's executables not found"**.
    
    You need to download GraphViz-2.3.8 for your specific OS(**Windows, Ubuntu, Fedora, Debian and MacOS**) at https://www.graphviz.org/download/

    For windows users, you need to download .msi install file. After installation, you may need to add its installation path to your system PATH variable. If you can not find tutorial on how to add an PATH.
    I suggest that you can install **Windows Linux Subsystem** to enjoy command line installation.
    
    For Ubuntu users, you can simply run **sudo apt-get update** and **sudo apt-get install graphviz**
    
    For MacOS users, you should be able to install it using **brew install graphviz**
    
    If you still can not install graphviz software, you can delete the decision tree visualization parts in question 1,2,3.
    
    
    
**Thanks for your peer review! Happy winter break!**