.class Lcom/amazon/whispersync/roboguice/RoboGuice$1$1;
.super Lcom/amazon/whispersync/com/google/inject/spi/DefaultElementVisitor;
.source "RoboGuice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/roboguice/RoboGuice$1;->call()Lcom/amazon/whispersync/com/google/inject/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/spi/DefaultElementVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/roboguice/RoboGuice$1;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/roboguice/RoboGuice$1;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1$1;->this$0:Lcom/amazon/whispersync/roboguice/RoboGuice$1;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/spi/DefaultElementVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/roboguice/RoboGuice$1$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Void;
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1$1;->this$0:Lcom/amazon/whispersync/roboguice/RoboGuice$1;

    iget-object v1, v0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$namespace:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$application:Landroid/app/Application;

    invoke-static {v1, v0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getResourceListener(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/roboguice/inject/ResourceListener;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;->getType()Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/inject/ResourceListener;->requestStaticInjection([Ljava/lang/Class;)V

    const/4 p1, 0x0

    return-object p1
.end method
