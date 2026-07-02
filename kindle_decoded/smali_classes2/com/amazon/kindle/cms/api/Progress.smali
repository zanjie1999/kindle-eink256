.class public final Lcom/amazon/kindle/cms/api/Progress;
.super Ljava/lang/Object;
.source "Progress.java"


# static fields
.field private static final s_values:[Lcom/amazon/kindle/cms/api/Progress;


# instance fields
.field private final m_percentage:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x65

    new-array v0, v0, [Lcom/amazon/kindle/cms/api/Progress;

    .line 73
    sput-object v0, Lcom/amazon/kindle/cms/api/Progress;->s_values:[Lcom/amazon/kindle/cms/api/Progress;

    const/4 v0, 0x0

    .line 74
    :goto_0
    sget-object v1, Lcom/amazon/kindle/cms/api/Progress;->s_values:[Lcom/amazon/kindle/cms/api/Progress;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 75
    new-instance v2, Lcom/amazon/kindle/cms/api/Progress;

    invoke-direct {v2, v0}, Lcom/amazon/kindle/cms/api/Progress;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/amazon/kindle/cms/api/Progress;->m_percentage:I

    return-void
.end method

.method public static fromPercentage(I)Lcom/amazon/kindle/cms/api/Progress;
    .locals 1

    const/16 v0, 0x64

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    const/16 p0, 0x64

    .line 19
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kindle/cms/api/Progress;->s_values:[Lcom/amazon/kindle/cms/api/Progress;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public asPercentage()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/amazon/kindle/cms/api/Progress;->m_percentage:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 42
    const-class v2, Lcom/amazon/kindle/cms/api/Progress;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    check-cast p1, Lcom/amazon/kindle/cms/api/Progress;

    .line 46
    iget v2, p0, Lcom/amazon/kindle/cms/api/Progress;->m_percentage:I

    iget p1, p1, Lcom/amazon/kindle/cms/api/Progress;->m_percentage:I

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/amazon/kindle/cms/api/Progress;->m_percentage:I

    return v0
.end method
