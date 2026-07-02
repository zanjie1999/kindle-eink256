.class public interface abstract Lcom/amazon/whisperjoin/common/sharedtypes/reporting/ProvisionerEventReporter;
.super Ljava/lang/Object;
.source "ProvisionerEventReporter.java"


# virtual methods
.method public abstract registerNewReportingSession(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeReportingSession(Ljava/lang/String;)V
.end method

.method public abstract reportConnectedFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
.end method

.method public abstract reportConnectedSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportNetworkedFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
.end method

.method public abstract reportProvisionedFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
.end method

.method public abstract reportProvisionedSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Lcom/amazon/devicesetupservice/v1/CredentialLockerUsageInfo;)V
.end method

.method public abstract reportRegisteredFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
.end method

.method public abstract reportRetrievedProvisioningDetailsFailure(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
.end method

.method public abstract reportRetrievedProvisioningDetailsSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;)V
.end method

.method public abstract reportSecureChannelEstablishedFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
.end method

.method public abstract reportSecureChannelEstablishedSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
