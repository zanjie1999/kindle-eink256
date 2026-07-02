.class public final Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$LogoutHandler;
.super Ljava/lang/Object;
.source "BaseTicrDocViewerEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogoutHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 113
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 114
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const-string v1, "Unable to delete global ticr files"

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
