.class Lcom/amazon/kindle/persistence/AbstractSettingsController$11;
.super Ljava/lang/Object;
.source "AbstractSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/persistence/AbstractSettingsController;->removeAll(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

.field final synthetic val$keys:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/util/Collection;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$11;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    iput-object p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$11;->val$keys:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$11;->val$keys:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    iget-object v2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$11;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    invoke-static {v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->access$000(Lcom/amazon/kindle/persistence/AbstractSettingsController;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
