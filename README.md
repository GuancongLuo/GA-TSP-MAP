# GA-TSP-MAP
Genetic-algorithm for TSP and matlab GUI for word map simulation
遗传算法复现TSP问题，并构造matlab GUI，实现世界地图的TSP问题旅游路线最短Demo.

步骤一：打开guiyichuanyingyong.m运行，出现主界面；

步骤二：点击主界面左上角‘选择城市’菜单，出现子界面，选择你带你另一半想去的城市；

![Image text](https://github.com/hu5tao/GA-TSP-MAP/blob/master/sub_gui.png)
    
    两个下拉，先选择左边下拉菜单选择世界区域，比如中国，然后点击右边下拉，选择想去的城市，选择城市之后，点击‘选择该城市’，如果选择城市重复，系统会提醒你选择重复；
    
    选择完所有的城市之后，点击‘城市选择完毕’，将会自动退出子界面，并且在主界面上显示你的选择区域信息；

步骤三：选择GA遗传算法‘设为默认值’按钮，将会使用默认参数，如果不想，调参可在上面直接改。

步骤四：选择‘根据所选城市生成距离表格’按钮，将会生成距离信息，该信息为严格经纬度距离信息。

步骤五：点击‘为您定制最佳航线’按钮，将会显示总长路径和最优距离，并且在主界面上显示简易位置信息和标记。
![Image text](https://github.com/hu5tao/GA-TSP-MAP/blob/master/main_gui.jpg)
