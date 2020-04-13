/**
* ����:������
* ����:�򵥵���֤�����Լ�����չ
* ��ϵ:kk_8983@foxmail.com
* ����:�Լ���װ�Ĺ�����
*/
var utils = {
/*
* �汾�ţ�û��ʲô����
* */
Version: '0.0.1',
/*
* ��;����������ַ����Ƿ�ֻ��Ӣ����ĸ�����ֺ��»������
* ���룺 s���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isNumberOr_Letter : function(s) {// �ж��Ƿ������ֻ���ĸ
var regu = "^[0-9a-zA-Z\_]+$";
var re = new RegExp(regu);
if (re.test(s)) {
return true;
} else {
return false;
}
},
/*
* ��;�������������ֵ�Ƿ����E-Mail��ʽ
* ���룺str ������ַ���
* ���أ����ͨ����֤����true,���򷵻�false
*/
isEmail:function(str) {
var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|com|gov|mil|org|edu|int|name|asia)$";
var re = new RegExp(regu);
if( str.search( re ) == -1 )
{
return false;
}
else
{
return true;
}
},
/*
* ��;����������ֻ������Ƿ���ȷ
* ���룺 s���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
checkMobile:function(s) {
//ԭ������--�Ľ�һ��
//var regu = /^[1][0-9][0-9]{9}$/;
var regu = /^(1[34578]{1,1}[0-9]{9,9})$/;
var re = new RegExp(regu);
if (re.test(s)) {
return true;
} else {
return false;
}
},
/*
* ��;����������ַ����Ƿ�������
* ���룺 str���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isNumber:function (str)
{
var reg = /^\d+$/;
if (reg.test(str))
return true;
else
return false;
},
/*
* ��;����������ַ����Ƿ����ʱ���ʽ
* ���룺 time���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isTime:function(time){
var regex = /^[0-2]{1}[0-9]{1}:[0-5]{1}[0-9]{1}:[0-5]{1}[0-9]{1}$/;
if(!regex.test(time)){
return false;
}
var hour = time.substring(0,2);
var minute = time.substring(3,5);
var second = time.substring(6);
if(hour>23 || hour <0){
return false;
}
if(minute > 60 ||minute < 0){
return false;
}
if(second > 60 ||second < 0){
return false;
}
return true;
},
/*
* ��;����������ַ����Ƿ������������ʽ
* ���룺 s���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isNumber:function(s) {
var regu = "^[0-9]+$";
var re = new RegExp(regu);
if (s.search(re) != -1) {
return true;
} else {
return false;
}
},
/*
* ��;����������ַ����Ƿ���Ϲ��ڹ̻����ߴ����ʽ
* ���룺 s���ַ��� ��ʽ���磺020-87110252 ���أ�
* ���ͨ����֤����true,���򷵻�false
*/
isTel:function (s){
var reg=/^((0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
if(!reg.test(s))
return false
return true
},
/*
* ��;����������ַ����Ƿ�������֤��ʽ
* ���룺 s���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isIDno:function(strIDno)
{
var aCity={11:"����",12:"���",13:"�ӱ�",14:"ɽ��",15:"���ɹ�",21:"����",22:"����",23:"������",31:"�Ϻ�",32:"����",33:"�㽭",34:"����",35:"����",36:"����",37:"ɽ��",41:"����",42:"����",43:"����",44:"�㶫",45:"����",46:"����",50:"����",51:"�Ĵ�",52:"����",53:"����",54:"����",61:"����",62:"����",63:"�ຣ",64:"����",65:"�½�",71:"̨��",81:"���",82:"����",91:"����"};
var iSum = 0;
var info = "";
//var strIDno = obj.value;
var idCardLength = strIDno.length;
if(!/^\d{17}(\d|x)$/i.test(strIDno)&&!/^\d{15}$/i.test(strIDno))
{
//alert("�Ƿ����֤��");
return false;
}
//�ں����������x�൱������10,����ת����a
strIDno = strIDno.replace(/x$/i,"a");
if(aCity[parseInt(strIDno.substr(0,2))]==null)
{
//alert("�Ƿ�����");
return false;
}
if (idCardLength==18)
{
sBirthday=strIDno.substr(6,4)+"-"+Number(strIDno.substr(10,2))+"-"+Number(strIDno.substr(12,2));
var d = new Date(sBirthday.replace(/-/g,"/"))
if(sBirthday!=(d.getFullYear()+"-"+ (d.getMonth()+1) + "-" + d.getDate()))
{
//alert("�Ƿ�����");
return false;
}
for(var i = 17;i>=0;i --)
iSum += (Math.pow(2,i) % 11) * parseInt(strIDno.charAt(17 - i),11);
if(iSum%11!=1)
{
//alert("�Ƿ����֤��");
return false;
}
}
else if (idCardLength==15)
{
sBirthday = "19" + strIDno.substr(6,2) + "-" + Number(strIDno.substr(8,2)) + "-" + Number(strIDno.substr(10,2));
var d = new Date(sBirthday.replace(/-/g,"/"))
var dd = d.getFullYear().toString() + "-" + (d.getMonth()+1) + "-" + d.getDate();
if(sBirthday != dd)
{
//alert("�Ƿ�����");
return false;
}
}
return true;
},
/*
* ��;����������ַ����Ƿ�������������ʽ
* ���룺 s���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isZipcode:function(str)
{
var reg = /^\d+$/;
if (!reg.test(str))
return false;
if(str.length!=6)
{
//alert("�������볤�ȱ�����6λ");
return false;
}
return true;
},
/*
* ��;����������ַ����Ƿ���Ͻ���ʽ ��ʽ����Ϊ��С����������С����������λ
* ���룺 s���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isMoney : function(s) {
var regu = "^[0-9]+[\.][0-9]{0,3}$";
var re = new RegExp(regu);
if (re.test(s)) {
return true;
} else {
return false;
}
},
/*
* ��;����������ַ����Ƿ�ֻ�ɺ������
* ���룺 s���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isZh:function(str){
var reg = /^[\u4e00-\u9fa5]+$/;
if (reg.test(str)) return true;
return false;
},
/*
* ��;�������������ֵ�Ƿ����������ʽ
* ���룺str ������ַ���
* ���أ����ͨ����֤����true,���򷵻�false
*/
isInteger:function(str) {
var regu = /^[-]{0,1}[0-9]{1,}$/;
return regu.test(str);
},
/*
* ��;����������ַ����Ƿ�ֻ�ɺ��֡���ĸ���������
* ���룺 value���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isChinaOrNumbOrLett:function (s) {//�ж��Ƿ��Ǻ��֡���ĸ���������
var regu = "^[0-9a-zA-Z\u4e00-\u9fa5]+$";
var re = new RegExp(regu);
if (re.test(s)) {
return true;
} else {
return false;
}
},
/*
* ��;��У��ip��ַ�ĸ�ʽ
* ���룺strIP��ip��ַ
* ���أ����ͨ����֤����true,���򷵻�false��
*/
isIP:function(strIP) {
if (isNull(strIP)) return false;
var re = /^(\d+)\.(\d+)\.(\d+)\.(\d+)$/g // ƥ��IP��ַ��������ʽ
if (re.test(strIP)) {
if (RegExp.$1 < 256 && RegExp.$2 < 256 && RegExp.$3 < 256 && RegExp.$4 < 256) return true;
}
return false;
},
/*
* ��;����������ַ����Ƿ�ֻ��Ӣ����ĸ��������� ���룺
* s���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isNumberOrLetter : function(s) {// �ж��Ƿ������ֻ���ĸ
var regu = "^[0-9a-zA-Z]+$";
var re = new RegExp(regu);
if (re.test(s)) {
return true;
} else {
return false;
}
},
/*
* ��;���˺ű���
* ���룺
* s���ַ���
* ���أ� ���ͨ����֤����true,���򷵻�false
*/
isAccount : function(s) {// �ж��Ƿ������ֻ���ĸ
var regu = "^([0-9a-zA-Z]+[_0-9a-zA-Z@.-]*)$";
var re = new RegExp(regu);
if (re.test(s)) {
return true;
} else {
return false;
}
},
/*
* ��;��ȥ���ո���� һϵ��
* ���룺s���ַ���
* ���أ� �ַ���
*/
trim:function(str){
return str.replace(/^\s*|\s*$/g, "");
},
ltrim:function(str){
return str.replace(/^\s*/g, "");
},
rtrim:function(str){
return str.replace(/\s*$/g, "");
},
trim_string:function(str){
return str.replace(/\s*/g, "");
}
};