.class public final Lcom/amazon/kindle/recaps/RecapsCommonModel;
.super Ljava/lang/Object;
.source "RecapsCommonModel.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

.field private static currentBook:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field

.field private static readerContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/recaps/RecapsCommonModel;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/RecapsCommonModel;-><init>()V

    sput-object v0, Lcom/amazon/kindle/recaps/RecapsCommonModel;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentBook()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsCommonModel;->currentBook:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getReaderContext()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsCommonModel;->readerContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final setCurrentBook(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 22
    sput-object p1, Lcom/amazon/kindle/recaps/RecapsCommonModel;->currentBook:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setReaderContext(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 16
    sput-object p1, Lcom/amazon/kindle/recaps/RecapsCommonModel;->readerContext:Ljava/lang/ref/WeakReference;

    return-void
.end method
