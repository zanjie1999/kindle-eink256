.class Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider$1;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "BirdsEyeViewPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider$1;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 264
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider$1;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;

    invoke-static {v0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->access$100(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider$1;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->access$202(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    .line 267
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider$1;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;

    invoke-static {p1, v0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->access$102(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
