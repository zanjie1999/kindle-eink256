.class public final Lcom/amazon/kcp/library/AlwaysInvisibleStrategy;
.super Ljava/lang/Object;
.source "AlwaysStrategy.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/AlwaysInvisibleStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kcp/library/AlwaysInvisibleStrategy;

    invoke-direct {v0}, Lcom/amazon/kcp/library/AlwaysInvisibleStrategy;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/AlwaysInvisibleStrategy;->INSTANCE:Lcom/amazon/kcp/library/AlwaysInvisibleStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
