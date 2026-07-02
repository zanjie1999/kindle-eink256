.class Lcom/amazon/kindle/persistence/AbstractSettingsController$6;
.super Ljava/lang/Object;
.source "AbstractSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/lang/String;Z)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$6;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    iput-object p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$6;->val$key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$6;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$6;->val$key:Ljava/lang/String;

    const-string v1, "CONTINUOUS_SCROLL_REFLOWABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting runnable to store continuous scroll value with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$6;->val$value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kindle.persistence.AbstractSettingsController"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$6;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    invoke-static {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->access$000(Lcom/amazon/kindle/persistence/AbstractSettingsController;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$6;->val$key:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$6;->val$value:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    return-void
.end method
