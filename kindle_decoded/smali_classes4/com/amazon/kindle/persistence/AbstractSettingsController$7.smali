.class Lcom/amazon/kindle/persistence/AbstractSettingsController$7;
.super Ljava/lang/Object;
.source "AbstractSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/lang/String;I)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$7;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    iput-object p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$7;->val$key:Ljava/lang/String;

    iput p3, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$7;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$7;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    invoke-static {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->access$000(Lcom/amazon/kindle/persistence/AbstractSettingsController;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$7;->val$key:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$7;->val$value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    return-void
.end method
