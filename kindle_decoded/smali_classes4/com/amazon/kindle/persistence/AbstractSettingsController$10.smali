.class Lcom/amazon/kindle/persistence/AbstractSettingsController$10;
.super Ljava/lang/Object;
.source "AbstractSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$10;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    iput-object p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$10;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$10;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$10;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    invoke-static {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->access$000(Lcom/amazon/kindle/persistence/AbstractSettingsController;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$10;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$10;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
