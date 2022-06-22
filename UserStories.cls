public with sharing class UserStories {
    public UserStories() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Q_User_Story__c> getDetails(String recordId){
        return[
            SELECT
            Type__c,
            Status__c
            FROM Q_User_Story__c
            WHERE Q_Sprint__c=:recordId
        ];
    }
    @AuraEnabled
    public static List<Q_User_Story__c> getRecordList(String recordvId){
        System.debug('recordvId'+recordvId);
        return[
            SELECT Type__c,Status__c FROM Q_User_Story__c
            WHERE Q_Sprint__c=:recordvId
        ];
    }
}
