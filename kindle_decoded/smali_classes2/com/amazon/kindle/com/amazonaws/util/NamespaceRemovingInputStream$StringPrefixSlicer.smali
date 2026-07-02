.class final Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;
.super Ljava/lang/Object;
.source "NamespaceRemovingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringPrefixSlicer"
.end annotation


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    return-object v0
.end method

.method public removePrefix(Ljava/lang/String;)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public removePrefixEndingWith(Ljava/lang/String;)Z
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public removeRepeatingPrefix(Ljava/lang/String;)Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->s:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
