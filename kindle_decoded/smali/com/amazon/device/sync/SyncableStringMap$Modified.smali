.class Lcom/amazon/device/sync/SyncableStringMap$Modified;
.super Lcom/amazon/device/sync/SyncableStringMap$View;
.source "SyncableStringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Modified"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/sync/SyncableStringMap$View<",
        "Lcom/amazon/whispersync/Record;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableStringMap;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableStringMap;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$Modified;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncableStringMap$View;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    return-void
.end method


# virtual methods
.method public includeInView(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Z
    .locals 0

    .line 129
    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDirty()Z

    move-result p1

    return p1
.end method

.method public transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Lcom/amazon/whispersync/Record;
    .locals 0

    .line 125
    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->asWhispersyncRecord()Lcom/amazon/whispersync/Record;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/SyncableStringMap$Modified;->transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Lcom/amazon/whispersync/Record;

    move-result-object p1

    return-object p1
.end method
