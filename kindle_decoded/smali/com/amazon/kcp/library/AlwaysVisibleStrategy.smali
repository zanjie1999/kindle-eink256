.class public final Lcom/amazon/kcp/library/AlwaysVisibleStrategy;
.super Ljava/lang/Object;
.source "AlwaysStrategy.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/AlwaysVisibleStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/amazon/kcp/library/AlwaysVisibleStrategy;

    invoke-direct {v0}, Lcom/amazon/kcp/library/AlwaysVisibleStrategy;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/AlwaysVisibleStrategy;->INSTANCE:Lcom/amazon/kcp/library/AlwaysVisibleStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
