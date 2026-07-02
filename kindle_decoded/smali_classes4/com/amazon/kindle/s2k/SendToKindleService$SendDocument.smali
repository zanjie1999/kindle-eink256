.class Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;
.super Ljava/lang/Object;
.source "SendToKindleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/SendToKindleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendDocument"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private archive:Z

.field private author:Ljava/lang/String;

.field private deliveryMechanism:Ljava/lang/String;

.field private inputFormat:Ljava/lang/String;

.field private m_builder:Landroid/app/Notification$Builder;

.field private m_contentView:Landroid/widget/RemoteViews;

.field private m_currentNotificationId:I

.field private m_file:Ljava/lang/String;

.field private m_notificationManager:Landroid/app/NotificationManager;

.field private osArchitecture:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private outputFormat:Ljava/lang/String;

.field private receivedIntent:Landroid/content/Intent;

.field private stkToken:Ljava/lang/String;

.field private targetDevices:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

.field private title:Ljava/lang/String;

.field private uploadFileError:Lcom/amazon/foundation/ICallback;

.field private uploadFileProgress:Lcom/amazon/foundation/ICallback;

.field private uploadFileSuccess:Lcom/amazon/foundation/ICallback;

.field private uploadUrl:Ljava/lang/String;

.field private uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleService;Landroid/content/Intent;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance p1, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$1;-><init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;)V

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadFileSuccess:Lcom/amazon/foundation/ICallback;

    .line 113
    new-instance p1, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$2;-><init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;)V

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadFileProgress:Lcom/amazon/foundation/ICallback;

    .line 122
    new-instance p1, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$3;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$3;-><init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;)V

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadFileError:Lcom/amazon/foundation/ICallback;

    .line 134
    iput-object p2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    .line 135
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->targetDevices:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public callGetUploadUrl()V
    .locals 8

    .line 197
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 200
    new-instance v5, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;

    invoke-direct {v5}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;-><init>()V

    .line 201
    new-instance v7, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;

    invoke-direct {v7}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;-><init>()V

    .line 202
    new-instance v6, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$4;

    invoke-direct {v6, p0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$4;-><init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;)V

    .line 221
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->appName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->setAppName(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->appVersion:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->setAppVersion(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->setFileSize(J)V

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->osName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->setOs(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->osArchitecture:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->setOsArchitecture(Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$5;

    move-object v2, v0

    move-object v3, p0

    move-object v4, v7

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$5;-><init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;Lcom/amazon/kindle/webservices/XmlResponseHandler;Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;)V

    .line 246
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    .line 249
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3e8

    .line 250
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/s2k/R$string;->docUploadMsg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 254
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/amazon/kindle/s2k/R$drawable;->stk_icon:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    .line 257
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/s2k/R$layout;->stk_upload_progress:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_contentView:Landroid/widget/RemoteViews;

    .line 258
    sget v3, Lcom/amazon/kindle/s2k/R$id;->status_icon:I

    sget v4, Lcom/amazon/kindle/s2k/R$drawable;->stk_icon:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 259
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_contentView:Landroid/widget/RemoteViews;

    sget v3, Lcom/amazon/kindle/s2k/R$id;->status_text:I

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_contentView:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/s2k/R$id;->status_progress:I

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v3, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 261
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 262
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v0, "notification"

    .line 264
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    .line 265
    iget v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public isValidFile(Ljava/lang/String;)Z
    .locals 9

    .line 495
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 503
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x3200000

    const-string v1, "UnknownError"

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 506
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidFile : File size greater than maximum supported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->fileSizeErrorText:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 510
    :cond_1
    invoke-static {p1}, Lcom/amazon/kindle/s2k/STKUtils;->getFileExtnFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 511
    sget-object v4, Lcom/amazon/kindle/s2k/SendToKindleService;->validInputFileFormats:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 514
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValidFile : File type not supported : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  type: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 515
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->unsupportedfileErrorText:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 499
    :cond_3
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidFile : Could not read file : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->showFileReadErrorMsg()V

    return v2
.end method

.method public onGetUploadUrlError(Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 3

    .line 299
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetuploadUrlError : GetUploadUrl API call Failed : statusCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->getStatusCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetuploadUrlError : GetUploadUrl API call Failed : errorState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    .line 303
    iget v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 305
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->showErrorMsg(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method

.method public onGetUploadUrlSuccess(Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;)V
    .locals 10

    .line 271
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetuploadUrlSuccess : GetUploadUrl API call Succeeded : statusCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetuploadUrlSuccess : GetUploadUrl API call Succeeded : expiryTime : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->getExpiryTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetuploadUrlSuccess : GetUploadUrl API call Succeeded : stkToken : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->getStkToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetuploadUrlSuccess : GetUploadUrl API call Succeeded : uploadUrl : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->getUploadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->getStkToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->stkToken:Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    new-instance v1, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-direct {v1}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    .line 282
    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;->getUploadUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadUrl:Ljava/lang/String;

    .line 283
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onGetUploadUrlSuccess : Uploading file to S3"

    invoke-static {p1, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    iget-object v4, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadFileSuccess:Lcom/amazon/foundation/ICallback;

    iget-object v8, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadFileProgress:Lcom/amazon/foundation/ICallback;

    iget-object v9, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadFileError:Lcom/amazon/foundation/ICallback;

    invoke-virtual/range {v3 .. v9}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->doUpload(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    const-string v1, "onGetUploadUrlSuccess : Either the file does not exists on SDCard or it could not be read. Exiting..."

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->showFileReadErrorMsg()V

    :goto_0
    return-void
.end method

.method public onSendToKindleError(Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 3

    .line 484
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendToKindleError : SendToKindle API call Failed : statusCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;->getStatusCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendToKindleError : SendToKindle API call Failed : errorState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    .line 488
    iget v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 490
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->showErrorMsg(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method

.method public onSendToKindleSuccess(Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;)V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_contentView:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/s2k/R$id;->status_progress:I

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 453
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 455
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 456
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 459
    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;->getStatusCode()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 461
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendToKindleSuccess : SendToKindle API call Succeeded : statusCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;->getStatusCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendToKindleSuccess : SendToKindle API call Failed : statusCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;->getStatusCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 468
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$100(Lcom/amazon/kindle/s2k/SendToKindleService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$8;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$8;-><init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->send_to_kindle_activity_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    .line 476
    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/s2k/R$string;->singleDocSendSuccess:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v1, "SendToKindleService"

    const-string v2, "DocumentSendSuccess"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    return-void
.end method

.method public onUploadFileError()V
    .locals 3

    .line 414
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUploadFileError : state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  substate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 417
    iget v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->hasState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getState()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v1}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/s2k/R$string;->error_message_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnknownError"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUploadFileProgress()V
    .locals 7

    .line 432
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUploadFileProgress : state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  substate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUploadFileProgress : currentProgress : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v3}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/foundation/AbstractStatusTracker;->getProgress()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  out of maxProgress : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v3}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/foundation/AbstractStatusTracker;->getMax()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/AbstractStatusTracker;->getProgress()J

    move-result-wide v0

    .line 436
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/foundation/AbstractStatusTracker;->getMax()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-wide/16 v4, 0x64

    mul-long v0, v0, v4

    .line 441
    div-long/2addr v0, v2

    .line 442
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_contentView:Landroid/widget/RemoteViews;

    sget v3, Lcom/amazon/kindle/s2k/R$id;->status_progress:I

    const/16 v4, 0x64

    long-to-int v1, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 443
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 446
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public onUploadFileSuccess()V
    .locals 11

    .line 311
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUploadFileSuccess : state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  substate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->uploadWebservice:Lcom/amazon/kindle/s2k/webservice/UploadWebservice;

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebservice;->getStatusTracker()Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/s2k/webservice/UploadWebserviceStatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUploadFileSuccess : Now making SendToKindle API call"

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 319
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 320
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, v1, v3}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 322
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 324
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v3

    .line 328
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 329
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUploadFileSuccess : computed crc32 : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_file:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/STKUtils;->getFileExtnFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->inputFormat:Ljava/lang/String;

    const-string v1, "pdf"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PDF"

    .line 335
    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->outputFormat:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "MOBI"

    .line 339
    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->outputFormat:Ljava/lang/String;

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_file:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/STKUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->title:Ljava/lang/String;

    .line 350
    :cond_3
    new-instance v8, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;

    invoke-direct {v8}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;-><init>()V

    .line 351
    new-instance v10, Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;

    invoke-direct {v10}, Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;-><init>()V

    .line 352
    new-instance v9, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$6;

    invoke-direct {v9, p0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$6;-><init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;)V

    .line 370
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->appName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setAppName(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->appVersion:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setAppVersion(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->osName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setOs(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->osArchitecture:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setOsArchitecture(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->stkToken:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setStkToken(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->targetDevices:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setTargetDevices(Ljava/util/Vector;)V

    .line 376
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->title:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setTitle(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->author:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setAuthor(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->inputFormat:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setInputFormat(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v8, v3, v4}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setCrc32(J)V

    .line 380
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->outputFormat:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setOutputFormat(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->deliveryMechanism:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setDeliveryMechanism(Ljava/lang/String;)V

    .line 382
    iget-boolean v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->archive:Z

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->setArchive(Z)V

    .line 384
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$7;

    move-object v5, v0

    move-object v6, p0

    move-object v7, v10

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$7;-><init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;Lcom/amazon/kindle/webservices/XmlResponseHandler;Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;)V

    .line 403
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public run()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v1, "INPUT_FORMAT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->inputFormat:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v1, "FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received file path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v3, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->isValidFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "Invalid file, cannot continue"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 151
    :cond_0
    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_file:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v1, "OUTPUT_FORMAT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->outputFormat:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v1, "DELIVERY_MECHANISM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->deliveryMechanism:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "ARCHIVE_ENABLED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->archive:Z

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v2, "TARGET_DEVICES"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 163
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->targetDevices:Ljava/util/Vector;

    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v1, "APP_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->appName:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v1, "APP_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->appVersion:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v1, "OS_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->osName:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v1, "OS_ARCHITECTURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->osArchitecture:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->title:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, "[\\\\/:\\*\\?\"<>\\|]"

    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->title:Ljava/lang/String;

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->title:Ljava/lang/String;

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->receivedIntent:Landroid/content/Intent;

    const-string v4, "AUTHOR"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->author:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 186
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->author:Ljava/lang/String;

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->author:Ljava/lang/String;

    .line 189
    :cond_4
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  updated author : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->callGetUploadUrl()V

    return-void
.end method

.method public showErrorMsg(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 6

    .line 588
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 590
    iget v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 595
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const-string v1, "SendToKindleService"

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DEVICE_NETWORK_CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p1, v0, :cond_2

    .line 604
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->error_title_stkserver:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 605
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/s2k/R$string;->error_message_stkserver:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v4, "ServerError"

    invoke-virtual {v2, v1, v4, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    goto :goto_1

    .line 609
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->UNKNOWN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p1, v0, :cond_3

    .line 611
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->error_title_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 612
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/s2k/R$string;->error_message_unknown:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v4, "InternalError"

    invoke-virtual {v2, v1, v4, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    goto :goto_1

    .line 618
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->error_title_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 619
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/s2k/R$string;->error_message_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 597
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->error_title_connection:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 598
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/s2k/R$string;->error_message_connection:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v4, "NetworkError"

    invoke-virtual {v2, v1, v4, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    .line 622
    :goto_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    .line 623
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 624
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v4}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    .line 626
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_5

    const-string v4, "kindle_default_channel"

    .line 627
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 630
    :cond_5
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    sget v4, Lcom/amazon/kindle/s2k/R$drawable;->stk_icon:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 631
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 633
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 634
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 635
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    .line 636
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 528
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 530
    iget v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    const-string v0, "ConnectionError"

    .line 534
    invoke-static {p1, v0}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SendToKindleService"

    if-eqz v0, :cond_1

    .line 536
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/s2k/R$string;->error_title_connection:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 537
    iget-object p2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p2}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/s2k/R$string;->error_message_connection:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 539
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v3, "NetworkError"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "Server Error"

    .line 541
    invoke-static {p1, v0}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/s2k/R$string;->error_title_stkserver:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 544
    iget-object p2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p2}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/s2k/R$string;->error_message_stkserver:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 546
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v3, "ServerError"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    goto :goto_0

    :cond_2
    const-string v0, "InternalError"

    .line 548
    invoke-static {p1, v0}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 550
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/s2k/R$string;->error_title_unknown:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 551
    iget-object p2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p2}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/amazon/kindle/s2k/R$string;->error_message_unknown:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 553
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    invoke-virtual {v2, v1, v0, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    goto :goto_0

    :cond_3
    const-string v0, "UnknownError"

    .line 555
    invoke-static {p1, v0}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 557
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->error_title_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 562
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->send_to_kindle_activity_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 566
    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3e8

    .line 567
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 569
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v3}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    .line 571
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_5

    const-string v3, "kindle_default_channel"

    .line 572
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 575
    :cond_5
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    sget v3, Lcom/amazon/kindle/s2k/R$drawable;->stk_icon:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 576
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 577
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 578
    iget-object p2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 579
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    .line 580
    iget-object p2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showFileReadErrorMsg()V
    .locals 8

    .line 644
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 646
    iget v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_currentNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/s2k/R$string;->error_title_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    .line 652
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 654
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v3}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 655
    iget-object v4, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v4}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 657
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    .line 658
    sget v6, Lcom/amazon/kindle/s2k/R$drawable;->stk_icon:I

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v6}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/s2k/R$string;->fileReadErrorText:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 662
    new-instance v2, Landroid/content/Intent;

    const-string v5, "mailto:sendtokindle-feedback@amazon.com?subject=Send to Kindle for Android feedback"

    .line 663
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v5, 0x0

    .line 662
    invoke-static {v4, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 664
    iget-object v4, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v4, Lcom/amazon/kindle/s2k/R$string;->fileReadErrorText:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 665
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 667
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->this$0:Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_notificationManager:Landroid/app/NotificationManager;

    .line 668
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->m_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
