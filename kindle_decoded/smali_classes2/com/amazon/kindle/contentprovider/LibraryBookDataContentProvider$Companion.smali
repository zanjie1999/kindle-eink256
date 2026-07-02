.class public final Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;
.super Ljava/lang/Object;
.source "LibraryBookDataContentProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 200
    invoke-static {}, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
