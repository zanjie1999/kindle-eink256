.class Lcom/amazon/kindle/persistence/AbstractSettingsController$9;
.super Ljava/lang/Object;
.source "AbstractSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/persistence/AbstractSettingsController;->putFloat(Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/lang/String;F)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$9;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    iput-object p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$9;->val$key:Ljava/lang/String;

    iput p3, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$9;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$9;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    invoke-static {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->access$000(Lcom/amazon/kindle/persistence/AbstractSettingsController;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$9;->val$key:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$9;->val$value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putFloat(Ljava/lang/String;Ljava/lang/Float;)Z

    return-void
.end method
