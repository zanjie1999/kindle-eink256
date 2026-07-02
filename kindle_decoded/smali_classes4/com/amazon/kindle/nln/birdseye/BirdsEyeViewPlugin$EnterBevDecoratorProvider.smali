.class Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;
.super Ljava/lang/Object;
.source "BirdsEyeViewPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnterBevDecoratorProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field private bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

.field private cachedAsin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider$1;-><init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;)Ljava/lang/String;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->cachedAsin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->cachedAsin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    return-object p1
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
    .locals 5

    .line 276
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 278
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 280
    :goto_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 281
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    invoke-static {}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting location seeker decoration for IBook: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " that does not match current ILocalBookItem: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Unable to determine NLN support"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 287
    :cond_2
    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 290
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->cachedAsin:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 291
    :cond_3
    new-instance p1, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;

    invoke-direct {p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    .line 292
    iput-object v2, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->cachedAsin:Ljava/lang/String;

    .line 295
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    return-object p1

    .line 297
    :cond_5
    iput-object v1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->bevDecorator:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    .line 298
    iput-object v1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->cachedAsin:Ljava/lang/String;

    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 252
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecoratorProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
