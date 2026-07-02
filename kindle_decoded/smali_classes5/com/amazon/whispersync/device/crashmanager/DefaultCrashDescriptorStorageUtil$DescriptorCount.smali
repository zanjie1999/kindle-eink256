.class Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;
.super Ljava/lang/Object;
.source "DefaultCrashDescriptorStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescriptorCount"
.end annotation


# instance fields
.field private mCount:I

.field private mCreatedMs:J

.field final synthetic this$0:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;)V
    .locals 3

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;-><init>(Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;IJ)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->this$0:Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput p2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->mCount:I

    .line 381
    iput-wide p3, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->mCreatedMs:J

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->mCount:I

    return v0
.end method

.method public getCreated()J
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->mCreatedMs:J

    return-wide v0
.end method

.method public increment()V
    .locals 1

    .line 387
    iget v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->mCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->mCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultCrashDescriptorStorageUtil$DescriptorCount;->mCreatedMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
