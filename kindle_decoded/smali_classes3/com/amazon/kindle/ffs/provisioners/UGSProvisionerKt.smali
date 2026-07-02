.class public final Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;
.super Ljava/lang/Object;
.source "UGSProvisioner.kt"


# static fields
.field private static final BAD_PASSWORD_ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FFSPlugin] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->TAG:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->wifiConnectionErrorBadPsk()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->BAD_PASSWORD_ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-void
.end method

.method public static final synthetic access$getBAD_PASSWORD_ERROR$p()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->BAD_PASSWORD_ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
