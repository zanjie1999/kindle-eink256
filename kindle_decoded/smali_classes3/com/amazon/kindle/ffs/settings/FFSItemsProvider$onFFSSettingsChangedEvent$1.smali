.class final Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$onFFSSettingsChangedEvent$1;
.super Ljava/lang/Object;
.source "FFSItemsProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->onFFSSettingsChangedEvent(Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$onFFSSettingsChangedEvent$1;->this$0:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$onFFSSettingsChangedEvent$1;->this$0:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->access$updateItem(Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;)V

    return-void
.end method
