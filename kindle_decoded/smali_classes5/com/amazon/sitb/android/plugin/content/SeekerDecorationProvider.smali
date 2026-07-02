.class public Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;
.super Ljava/lang/Object;
.source "SeekerDecorationProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
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
.field private priority:I

.field private seekerDecoration:Lcom/amazon/sitb/android/plugin/content/SeekerDecoration;


# direct methods
.method public constructor <init>(ILcom/amazon/sitb/android/plugin/content/SeekerDecoration;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;->priority:I

    .line 21
    iput-object p2, p0, Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;->seekerDecoration:Lcom/amazon/sitb/android/plugin/content/SeekerDecoration;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isFullBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;->seekerDecoration:Lcom/amazon/sitb/android/plugin/content/SeekerDecoration;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    .line 27
    iget p1, p0, Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;->priority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/plugin/content/SeekerDecorationProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
