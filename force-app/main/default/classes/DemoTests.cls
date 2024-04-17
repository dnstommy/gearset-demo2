
@isTest
private class DemoTests {

    @isTest
    static void PassTest() {
        
        CustomSetting__mdt setting = [SELECT Setting__c, Value__c FROM CustomSetting__mdt WHERE Setting__c = 'PassTest' LIMIT 1];

        Boolean passTest = Boolean.valueOf(setting.Value__c);

        System.assertEquals(true, passTest);

    }
}