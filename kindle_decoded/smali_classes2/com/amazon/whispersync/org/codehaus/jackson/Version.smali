.class public Lcom/amazon/whispersync/org/codehaus/jackson/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNKNOWN_VERSION:Lcom/amazon/whispersync/org/codehaus/jackson/Version;


# instance fields
.field protected final _majorVersion:I

.field protected final _minorVersion:I

.field protected final _patchLevel:I

.field protected final _snapshotInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->UNKNOWN_VERSION:Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_majorVersion:I

    .line 30
    iput p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_minorVersion:I

    .line 31
    iput p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_patchLevel:I

    .line 32
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_snapshotInfo:Ljava/lang/String;

    return-void
.end method

.method public static unknownVersion()Lcom/amazon/whispersync/org/codehaus/jackson/Version;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->UNKNOWN_VERSION:Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/org/codehaus/jackson/Version;)I
    .locals 2

    .line 81
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_majorVersion:I

    iget v1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_majorVersion:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 83
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_minorVersion:I

    iget v1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_minorVersion:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 85
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_patchLevel:I

    iget p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_patchLevel:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->compareTo(Lcom/amazon/whispersync/org/codehaus/jackson/Version;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    if-eq v2, v3, :cond_2

    return v1

    .line 72
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    .line 73
    iget v2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_majorVersion:I

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_majorVersion:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_minorVersion:I

    iget v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_minorVersion:I

    if-ne v2, v3, :cond_3

    iget p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_patchLevel:I

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_patchLevel:I

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_minorVersion:I

    return v0
.end method

.method public getPatchLevel()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_patchLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 63
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_majorVersion:I

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_minorVersion:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_patchLevel:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isSnapshot()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_snapshotInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUknownVersion()Z
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->UNKNOWN_VERSION:Lcom/amazon/whispersync/org/codehaus/jackson/Version;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_majorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_minorVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_patchLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->isSnapshot()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/Version;->_snapshotInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
