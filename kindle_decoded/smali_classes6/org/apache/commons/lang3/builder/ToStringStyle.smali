.class public abstract Lorg/apache/commons/lang3/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lorg/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final NO_CLASS_NAME_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field public static final SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field private static final serialVersionUID:J = -0x23ea08d00c05296cL


# instance fields
.field private arrayContentDetail:Z

.field private arrayEnd:Ljava/lang/String;

.field private arraySeparator:Ljava/lang/String;

.field private arrayStart:Ljava/lang/String;

.field private contentEnd:Ljava/lang/String;

.field private contentStart:Ljava/lang/String;

.field private defaultFullDetail:Z

.field private fieldNameValueSeparator:Ljava/lang/String;

.field private fieldSeparator:Ljava/lang/String;

.field private fieldSeparatorAtEnd:Z

.field private fieldSeparatorAtStart:Z

.field private nullText:Ljava/lang/String;

.field private sizeEndText:Ljava/lang/String;

.field private sizeStartText:Ljava/lang/String;

.field private summaryObjectEndText:Ljava/lang/String;

.field private summaryObjectStartText:Ljava/lang/String;

.field private useClassName:Z

.field private useFieldNames:Z

.field private useIdentityHashCode:Z

.field private useShortClassName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 94
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 105
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 117
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 127
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 139
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$NoClassNameToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->NO_CLASS_NAME_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 158
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 166
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    .line 257
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    const/4 v1, 0x0

    .line 262
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    .line 267
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    const-string v2, "["

    .line 272
    iput-object v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    const-string v2, "]"

    .line 277
    iput-object v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    const-string v2, "="

    .line 282
    iput-object v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 287
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 292
    iput-boolean v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    const-string v1, ","

    .line 297
    iput-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    const-string v2, "{"

    .line 302
    iput-object v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 307
    iput-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 312
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    const-string v1, "}"

    .line 317
    iput-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 323
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    const-string v0, "<null>"

    .line 328
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    const-string v0, "<size="

    .line 333
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    const-string v0, ">"

    .line 338
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    const-string v1, "<"

    .line 343
    iput-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 348
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-void
.end method

.method static getRegistry()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 187
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 1

    .line 202
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 217
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 219
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 221
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 239
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 243
    sget-object p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0

    .line 677
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 679
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 468
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 471
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 477
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0

    .line 873
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 875
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 1481
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1482
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1483
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_0

    .line 1484
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1486
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected appendContentEnd(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1520
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendContentStart(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1511
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 611
    invoke-static {p1, p3}, Lorg/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0

    .line 775
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0

    .line 803
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0

    .line 831
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0

    .line 859
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 719
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0

    .line 691
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 624
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 636
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 648
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0

    .line 747
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0

    .line 887
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 2

    .line 1205
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1206
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1208
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1210
    :cond_0
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1212
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 2

    .line 1266
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1267
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1269
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1271
    :cond_0
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1273
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 3

    .line 1327
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1328
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1330
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1332
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1334
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 2

    .line 1388
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1389
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1391
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1393
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1395
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 2

    .line 1083
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1084
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1086
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1088
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1090
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 3

    .line 1022
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1023
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1025
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1027
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 928
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 929
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 930
    aget-object v1, p3, v0

    if-lez v0, :cond_0

    .line 932
    iget-object v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v1, :cond_1

    .line 935
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    .line 938
    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 2

    .line 1144
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1145
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1147
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1149
    :cond_0
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1151
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 2

    .line 1449
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1450
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1452
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1454
    :cond_0
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 424
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 427
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    .line 428
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .line 1564
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method protected appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1541
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    .line 1551
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1552
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1553
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 1498
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1499
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    const/16 v0, 0x40

    .line 1500
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1501
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    .line 500
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 506
    :cond_0
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 509
    :try_start_0
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 511
    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 513
    :cond_1
    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 516
    :cond_2
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    .line 518
    move-object p4, p3

    check-cast p4, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 520
    :cond_3
    move-object p4, p3

    check-cast p4, Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p4

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 523
    :cond_4
    instance-of v0, p3, [J

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    .line 525
    move-object p4, p3

    check-cast p4, [J

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 527
    :cond_5
    move-object p4, p3

    check-cast p4, [J

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 530
    :cond_6
    instance-of v0, p3, [I

    if-eqz v0, :cond_8

    if-eqz p4, :cond_7

    .line 532
    move-object p4, p3

    check-cast p4, [I

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 534
    :cond_7
    move-object p4, p3

    check-cast p4, [I

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 537
    :cond_8
    instance-of v0, p3, [S

    if-eqz v0, :cond_a

    if-eqz p4, :cond_9

    .line 539
    move-object p4, p3

    check-cast p4, [S

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 541
    :cond_9
    move-object p4, p3

    check-cast p4, [S

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 544
    :cond_a
    instance-of v0, p3, [B

    if-eqz v0, :cond_c

    if-eqz p4, :cond_b

    .line 546
    move-object p4, p3

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 548
    :cond_b
    move-object p4, p3

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 551
    :cond_c
    instance-of v0, p3, [C

    if-eqz v0, :cond_e

    if-eqz p4, :cond_d

    .line 553
    move-object p4, p3

    check-cast p4, [C

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 555
    :cond_d
    move-object p4, p3

    check-cast p4, [C

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0

    .line 558
    :cond_e
    instance-of v0, p3, [D

    if-eqz v0, :cond_10

    if-eqz p4, :cond_f

    .line 560
    move-object p4, p3

    check-cast p4, [D

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 562
    :cond_f
    move-object p4, p3

    check-cast p4, [D

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 565
    :cond_10
    instance-of v0, p3, [F

    if-eqz v0, :cond_12

    if-eqz p4, :cond_11

    .line 567
    move-object p4, p3

    check-cast p4, [F

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 569
    :cond_11
    move-object p4, p3

    check-cast p4, [F

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 572
    :cond_12
    instance-of v0, p3, [Z

    if-eqz v0, :cond_14

    if-eqz p4, :cond_13

    .line 574
    move-object p4, p3

    check-cast p4, [Z

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 576
    :cond_13
    move-object p4, p3

    check-cast p4, [Z

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 579
    :cond_14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p4, :cond_15

    .line 581
    move-object p4, p3

    check-cast p4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 583
    :cond_15
    move-object p4, p3

    check-cast p4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_16
    if-eqz p4, :cond_17

    .line 588
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 590
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :goto_0
    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    throw p1
.end method

.method protected appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .line 1532
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 407
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 408
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    .line 410
    iget-boolean p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz p2, :cond_0

    .line 411
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 661
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 0

    .line 1225
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 0

    .line 1286
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 0

    .line 1347
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 0

    .line 1408
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 0

    .line 1103
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 0

    .line 1042
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 981
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 0

    .line 1164
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 0

    .line 1469
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 1583
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1584
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1585
    iget-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected getArrayEnd()Ljava/lang/String;
    .locals 1

    .line 1783
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getArrayStart()Ljava/lang/String;
    .locals 1

    .line 1757
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentEnd()Ljava/lang/String;
    .locals 1

    .line 1861
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStart()Ljava/lang/String;
    .locals 1

    .line 1835
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getNullText()Ljava/lang/String;
    .locals 1

    .line 1987
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1619
    invoke-static {p1}, Lorg/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isFullDetail(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1604
    iget-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return p1

    .line 1606
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected isUseIdentityHashCode()Z
    .locals 1

    .line 1675
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 7

    .line 438
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 439
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    if-lt v0, v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v3

    .line 443
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    sub-int/2addr v0, v1

    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    return-void
.end method

.method protected setArrayEnd(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1798
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-void
.end method

.method protected setArrayStart(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1772
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-void
.end method

.method protected setContentEnd(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1876
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-void
.end method

.method protected setContentStart(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1850
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-void
.end method

.method protected setFieldNameValueSeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1902
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setFieldSeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1928
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setFieldSeparatorAtStart(Z)V
    .locals 0

    .line 1952
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return-void
.end method

.method protected setNullText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2002
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-void
.end method

.method protected setSizeEndText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2066
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-void
.end method

.method protected setSizeStartText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2034
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-void
.end method

.method protected setSummaryObjectEndText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2130
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-void
.end method

.method protected setSummaryObjectStartText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2098
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-void
.end method

.method protected setUseClassName(Z)V
    .locals 0

    .line 1642
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    return-void
.end method

.method protected setUseFieldNames(Z)V
    .locals 0

    .line 1704
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    return-void
.end method

.method protected setUseIdentityHashCode(Z)V
    .locals 0

    .line 1684
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    return-void
.end method

.method protected setUseShortClassName(Z)V
    .locals 0

    .line 1664
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    return-void
.end method
