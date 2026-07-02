.class Lcom/amazon/kindle/persistence/AbstractSettingsController$8;
.super Ljava/lang/Object;
.source "AbstractSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Lcom/amazon/kindle/persistence/AbstractSettingsController;Ljava/lang/String;J)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$8;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    iput-object p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$8;->val$key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$8;->val$value:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$8;->this$0:Lcom/amazon/kindle/persistence/AbstractSettingsController;

    invoke-static {v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->access$000(Lcom/amazon/kindle/persistence/AbstractSettingsController;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$8;->val$key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController$8;->val$value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putLong(Ljava/lang/String;Ljava/lang/Long;)Z

    return-void
.end method
