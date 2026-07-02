.class public Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;
.super Ljava/lang/Object;
.source "AndroidLog.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;->tag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;->tag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;->tag:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/logging/AndroidLog;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
