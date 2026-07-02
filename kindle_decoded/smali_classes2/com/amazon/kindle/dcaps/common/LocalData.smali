.class public Lcom/amazon/kindle/dcaps/common/LocalData;
.super Ljava/lang/Object;
.source "LocalData.java"


# instance fields
.field private capabilities:I

.field private status:Z

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/dcaps/common/LocalData;->setStatus(Z)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/dcaps/common/LocalData;->setCapabilities(I)V

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/common/LocalData;->setTimestamp()V

    return-void
.end method

.method public static retrieveData()Lcom/amazon/kindle/dcaps/common/LocalData;
    .locals 5

    .line 161
    invoke-static {}, Lcom/amazon/kindle/dcaps/common/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.amazon.kindle.dcaps"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    new-instance v2, Lcom/amazon/kindle/dcaps/common/LocalData;

    invoke-direct {v2}, Lcom/amazon/kindle/dcaps/common/LocalData;-><init>()V

    const-string v3, "status"

    .line 167
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/amazon/kindle/dcaps/common/LocalData;->status:Z

    const-string v3, "capabilities"

    .line 168
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/dcaps/common/LocalData;->setCapabilities(I)V

    const-string v1, "timestamp"

    const-wide/16 v3, 0x0

    .line 169
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/amazon/kindle/dcaps/common/LocalData;->setTimestamp(J)V

    return-object v2
.end method


# virtual methods
.method public getCapabilities()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/amazon/kindle/dcaps/common/LocalData;->capabilities:I

    return v0
.end method

.method public getStatus()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/amazon/kindle/dcaps/common/LocalData;->status:Z

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/amazon/kindle/dcaps/common/LocalData;->timestamp:J

    return-wide v0
.end method

.method public sameAs(Lcom/amazon/kindle/dcaps/common/LocalData;)Z
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/common/LocalData;->getCapabilities()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/dcaps/common/LocalData;->getCapabilities()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public saveData()V
    .locals 4

    .line 180
    invoke-static {}, Lcom/amazon/kindle/dcaps/common/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.amazon.kindle.dcaps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/common/LocalData;->getStatus()Z

    move-result v1

    const-string v2, "status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/common/LocalData;->getCapabilities()I

    move-result v1

    const-string v2, "capabilities"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/common/LocalData;->getTimestamp()J

    move-result-wide v1

    const-string v3, "timestamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setCapabilities(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/amazon/kindle/dcaps/common/LocalData;->capabilities:I

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/amazon/kindle/dcaps/common/LocalData;->status:Z

    return-void
.end method

.method public setTimestamp()V
    .locals 2

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/dcaps/common/LocalData;->timestamp:J

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/amazon/kindle/dcaps/common/LocalData;->timestamp:J

    return-void
.end method
