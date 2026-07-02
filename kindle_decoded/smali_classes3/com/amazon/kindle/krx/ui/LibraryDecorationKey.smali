.class public Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;
.super Ljava/lang/Object;
.source "LibraryDecorationKey.java"


# instance fields
.field public final groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field public final libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

.field public final position:Lcom/amazon/kindle/krx/ui/DecorationPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/DecorationPosition;Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;->position:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    .line 40
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;->libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

    .line 41
    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/LibraryDecorationKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-void
.end method
