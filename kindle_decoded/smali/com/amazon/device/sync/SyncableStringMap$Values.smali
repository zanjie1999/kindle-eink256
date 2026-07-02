.class Lcom/amazon/device/sync/SyncableStringMap$Values;
.super Lcom/amazon/device/sync/SyncableStringMap$View;
.source "SyncableStringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/sync/SyncableStringMap$View<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableStringMap;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableStringMap;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$Values;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncableStringMap$View;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/SyncableStringMap$Values;->transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
