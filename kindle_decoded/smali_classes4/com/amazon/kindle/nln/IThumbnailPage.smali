.class public interface abstract Lcom/amazon/kindle/nln/IThumbnailPage;
.super Ljava/lang/Object;
.source "IThumbnailPage.java"


# static fields
.field public static final PAGE_END_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_START_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/amazon/kindle/nln/IThumbnailPage$1;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/IThumbnailPage$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/nln/IThumbnailPage;->PAGE_START_COMPARATOR:Ljava/util/Comparator;

    .line 46
    new-instance v0, Lcom/amazon/kindle/nln/IThumbnailPage$2;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/IThumbnailPage$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/nln/IThumbnailPage;->PAGE_END_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public abstract getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;
.end method
