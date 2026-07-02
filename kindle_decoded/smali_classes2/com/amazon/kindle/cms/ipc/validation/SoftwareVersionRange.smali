.class public final Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;
.super Ljava/lang/Object;
.source "SoftwareVersionRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange$SortingComparator;
    }
.end annotation


# instance fields
.field private final m_max:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

.field private final m_min:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_min:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_max:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;)Lcom/amazon/kindle/cms/ipc/SoftwareVersion;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_min:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;)Lcom/amazon/kindle/cms/ipc/SoftwareVersion;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_max:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 48
    const-class v2, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    check-cast p1, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;

    .line 52
    iget-object v2, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_max:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    iget-object v3, p1, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_max:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 53
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_min:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    iget-object p1, p1, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_min:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_min:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_max:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {v1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public includes(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_min:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_max:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_max:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->m_min:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
