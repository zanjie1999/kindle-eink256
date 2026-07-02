.class public final Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;
.super Ljava/lang/Object;
.source "VersionValidator.java"


# instance fields
.field private final m_currentVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

.field private final m_supported:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;->m_currentVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    .line 14
    new-instance p1, Ljava/util/TreeSet;

    new-instance v0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange$SortingComparator;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange$SortingComparator;-><init>()V

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;->m_supported:Ljava/util/NavigableSet;

    return-void
.end method


# virtual methods
.method public addSupportedRange(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;-><init>(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;->addSupportedRange(Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;)V

    return-void
.end method

.method public addSupportedRange(Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;->m_supported:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fully overlapping range already added"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validate(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)Z
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;->m_currentVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    return v1

    .line 38
    :cond_0
    new-instance v0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;

    invoke-direct {v0, p1, p1}, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;-><init>(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)V

    .line 43
    iget-object v2, p0, Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;->m_supported:Ljava/util/NavigableSet;

    invoke-interface {v2, v0}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->includes(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
