.class Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;
.super Ljava/lang/Object;
.source "ReportSeriesErrorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ReportSeriesErrorDialog;->handlePositiveButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ReportSeriesErrorDialog;

.field final synthetic val$errorType:Ljava/lang/String;

.field final synthetic val$isSeriesLevel:Z

.field final synthetic val$seriesAsin:Ljava/lang/String;

.field final synthetic val$seriesItemAsin:Ljava/lang/String;

.field final synthetic val$userComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ReportSeriesErrorDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->this$0:Lcom/amazon/kcp/library/ReportSeriesErrorDialog;

    iput-object p2, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->val$errorType:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->val$userComment:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->val$seriesAsin:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->val$seriesItemAsin:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->val$isSeriesLevel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 127
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getLastAppUpgradeVersion()J

    move-result-wide v6

    .line 129
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v4

    .line 130
    iget-object v1, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->val$errorType:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->val$userComment:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->val$seriesAsin:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->val$seriesItemAsin:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;->val$isSeriesLevel:Z

    invoke-static/range {v1 .. v8}, Lcom/amazon/kcp/util/GroupContentUtils;->sendReportSeriesErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method
