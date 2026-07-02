.class Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$4;
.super Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
.source "DefaultRoboModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
        "Lcom/amazon/whispersync/roboguice/inject/NullProvider<",
        "Landroid/app/Service;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule$4;->this$0:Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
