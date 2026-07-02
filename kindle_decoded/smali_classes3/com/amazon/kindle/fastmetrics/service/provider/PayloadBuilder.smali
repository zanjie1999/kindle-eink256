.class public Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;
.super Ljava/lang/Object;
.source "PayloadBuilder.java"

# interfaces
.implements Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;


# static fields
.field private static final TAG:Ljava/lang/String; = "PayloadBuilder"


# instance fields
.field private final mBuilder:Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

.field private final mSchemaName:Ljava/lang/String;

.field private final mSchemaVersion:I

.field final mServiceProvider:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaName:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaVersion:I

    .line 33
    invoke-static {}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->getInstance()Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mServiceProvider:Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/amazon/kindle/fastmetrics/service/provider/KindleFastMetricsNativeServiceProvider;->getNativeService()Lcom/amazon/kindle/fastmetrics/jni/FastMetricsPublisher;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 36
    new-instance v0, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    int-to-long v1, p2

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mBuilder:Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    goto :goto_0

    :cond_0
    const-string p1, "PayloadBuilder"

    const-string p2, "The FastMetrics native service is not available to build a payload."

    .line 38
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mBuilder:Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    :goto_0
    return-void
.end method

.method static getValidString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mBuilder:Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaName:Ljava/lang/String;

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaVersion:I

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "A boolean with a null key was added for the payload with schema name %s and version %s"

    .line 135
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PayloadBuilder"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public addDouble(Ljava/lang/String;D)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mBuilder:Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->addDouble(Ljava/lang/String;D)Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 113
    iget-object p3, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaName:Ljava/lang/String;

    aput-object p3, p1, p2

    const/4 p2, 0x1

    iget p3, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaVersion:I

    .line 114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "A double with a null key was added for the payload with schema name %s and version %s"

    .line 113
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PayloadBuilder"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mBuilder:Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaName:Ljava/lang/String;

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaVersion:I

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "An integer with a null key was added for the payload with schema name %s and version %s"

    .line 69
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PayloadBuilder"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mBuilder:Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 91
    iget-object p3, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaName:Ljava/lang/String;

    aput-object p3, p1, p2

    const/4 p2, 0x1

    iget p3, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaVersion:I

    .line 92
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "A long with a null key was added for the payload with schema name %s and version %s"

    .line 91
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PayloadBuilder"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mBuilder:Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 155
    invoke-static {p2}, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaName:Ljava/lang/String;

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mSchemaVersion:I

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "A string with a null key was added for the payload with schema name %s and version %s"

    .line 157
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PayloadBuilder"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/amazon/kindle/fastmetrics/service/provider/PayloadBuilder;->mBuilder:Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;

    if-eqz v0, :cond_0

    .line 167
    new-instance v1, Lcom/amazon/kindle/fastmetrics/service/provider/Payload;

    invoke-virtual {v0}, Lcom/amazon/kindle/fastmetrics/jni/Payload$Builder;->build()Lcom/amazon/kindle/fastmetrics/jni/Payload;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/kindle/fastmetrics/service/provider/Payload;-><init>(Lcom/amazon/kindle/fastmetrics/jni/Payload;)V

    return-object v1

    .line 169
    :cond_0
    new-instance v0, Lcom/amazon/kindle/fastmetrics/service/provider/Payload;

    invoke-direct {v0}, Lcom/amazon/kindle/fastmetrics/service/provider/Payload;-><init>()V

    return-object v0
.end method
