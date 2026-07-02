.class public abstract Lorg/apache/commons/lang/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$DefaultToStringStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field public static final MULTI_LINE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field public static final NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field private static final REGISTRY:Ljava/lang/ThreadLocal;

.field public static final SHORT_PREFIX_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field public static final SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;


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
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 94
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 105
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 117
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 127
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 135
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    .line 217
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    const/4 v1, 0x0

    .line 222
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    .line 227
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useIdentityHashCode:Z

    const-string v2, "["

    .line 232
    iput-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    const-string v2, "]"

    .line 237
    iput-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    const-string v2, "="

    .line 242
    iput-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 247
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 252
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    const-string v1, ","

    .line 257
    iput-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    const-string v2, "{"

    .line 262
    iput-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 267
    iput-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 272
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    const-string v1, "}"

    .line 277
    iput-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 283
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->defaultFullDetail:Z

    const-string v0, "<null>"

    .line 288
    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    const-string v0, "<size="

    .line 293
    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    const-string v0, ">"

    .line 298
    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    const-string v1, "<"

    .line 303
    iput-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 308
    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-void
.end method

.method static getRegistry()Ljava/util/Map;
    .locals 1

    .line 146
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 1

    .line 161
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
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

    .line 176
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 179
    sget-object v1, Lorg/apache/commons/lang/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    .line 181
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 199
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 203
    sget-object p0, Lorg/apache/commons/lang/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0

    .line 778
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 780
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 666
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 668
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0

    .line 638
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 640
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 429
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 432
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 438
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0

    .line 834
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 836
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 1442
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1443
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1444
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1447
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

    .line 1481
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendContentStart(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1472
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 572
    invoke-static {p1, p3}, Lorg/apache/commons/lang/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0

    .line 736
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0

    .line 764
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0

    .line 792
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0

    .line 820
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 680
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0

    .line 652
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 585
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0

    .line 597
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 609
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0

    .line 708
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0

    .line 848
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 2

    .line 1166
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1167
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1169
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1171
    :cond_0
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1173
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 2

    .line 1227
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1228
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1230
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1232
    :cond_0
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1234
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 3

    .line 1288
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1289
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1291
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1293
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1295
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 2

    .line 1349
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1350
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1352
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1354
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1356
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 2

    .line 1044
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1045
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1047
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1049
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1051
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 3

    .line 983
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 984
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 986
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 988
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 990
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 889
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 890
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 891
    aget-object v1, p3, v0

    if-lez v0, :cond_0

    .line 893
    iget-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v1, :cond_1

    .line 896
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    .line 899
    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 2

    .line 1105
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1106
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1108
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1110
    :cond_0
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 2

    .line 1410
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1411
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1413
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1415
    :cond_0
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1417
    :cond_1
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 385
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 388
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    .line 389
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .line 1525
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method protected appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1502
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    .line 1512
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1513
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1514
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 1459
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1460
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    const/16 v0, 0x40

    .line 1461
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1462
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

    .line 461
    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 467
    :cond_0
    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 470
    :try_start_0
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 472
    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 474
    :cond_1
    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 477
    :cond_2
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    .line 479
    move-object p4, p3

    check-cast p4, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 481
    :cond_3
    move-object p4, p3

    check-cast p4, Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p4

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 484
    :cond_4
    instance-of v0, p3, [J

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    .line 486
    move-object p4, p3

    check-cast p4, [J

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 488
    :cond_5
    move-object p4, p3

    check-cast p4, [J

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 491
    :cond_6
    instance-of v0, p3, [I

    if-eqz v0, :cond_8

    if-eqz p4, :cond_7

    .line 493
    move-object p4, p3

    check-cast p4, [I

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 495
    :cond_7
    move-object p4, p3

    check-cast p4, [I

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 498
    :cond_8
    instance-of v0, p3, [S

    if-eqz v0, :cond_a

    if-eqz p4, :cond_9

    .line 500
    move-object p4, p3

    check-cast p4, [S

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 502
    :cond_9
    move-object p4, p3

    check-cast p4, [S

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 505
    :cond_a
    instance-of v0, p3, [B

    if-eqz v0, :cond_c

    if-eqz p4, :cond_b

    .line 507
    move-object p4, p3

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 509
    :cond_b
    move-object p4, p3

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 512
    :cond_c
    instance-of v0, p3, [C

    if-eqz v0, :cond_e

    if-eqz p4, :cond_d

    .line 514
    move-object p4, p3

    check-cast p4, [C

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 516
    :cond_d
    move-object p4, p3

    check-cast p4, [C

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0

    .line 519
    :cond_e
    instance-of v0, p3, [D

    if-eqz v0, :cond_10

    if-eqz p4, :cond_f

    .line 521
    move-object p4, p3

    check-cast p4, [D

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 523
    :cond_f
    move-object p4, p3

    check-cast p4, [D

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 526
    :cond_10
    instance-of v0, p3, [F

    if-eqz v0, :cond_12

    if-eqz p4, :cond_11

    .line 528
    move-object p4, p3

    check-cast p4, [F

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 530
    :cond_11
    move-object p4, p3

    check-cast p4, [F

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 533
    :cond_12
    instance-of v0, p3, [Z

    if-eqz v0, :cond_14

    if-eqz p4, :cond_13

    .line 535
    move-object p4, p3

    check-cast p4, [Z

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 537
    :cond_13
    move-object p4, p3

    check-cast p4, [Z

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 540
    :cond_14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p4, :cond_15

    .line 542
    move-object p4, p3

    check-cast p4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 544
    :cond_15
    move-object p4, p3

    check-cast p4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_16
    if-eqz p4, :cond_17

    .line 549
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 551
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :goto_0
    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    throw p1
.end method

.method protected appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .line 1493
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 368
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 369
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    .line 371
    iget-boolean p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz p2, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 622
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 0

    .line 1186
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 0

    .line 1247
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 0

    .line 1308
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 0

    .line 1369
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 0

    .line 1064
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 0

    .line 1003
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 942
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 0

    .line 1125
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 0

    .line 1430
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 1544
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1545
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1546
    iget-object p2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected getNullText()Ljava/lang/String;
    .locals 1

    .line 1970
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 1580
    invoke-static {p1}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isFullDetail(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1565
    iget-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->defaultFullDetail:Z

    return p1

    .line 1567
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected isUseIdentityHashCode()Z
    .locals 1

    .line 1658
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 7

    .line 399
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 400
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

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

    .line 404
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

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

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    return-void
.end method

.method protected setContentEnd(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1859
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-void
.end method

.method protected setContentStart(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1833
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-void
.end method

.method protected setFieldSeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1911
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setFieldSeparatorAtStart(Z)V
    .locals 0

    .line 1935
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return-void
.end method

.method protected setUseClassName(Z)V
    .locals 0

    .line 1603
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    return-void
.end method

.method protected setUseFieldNames(Z)V
    .locals 0

    .line 1687
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    return-void
.end method

.method protected setUseIdentityHashCode(Z)V
    .locals 0

    .line 1667
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useIdentityHashCode:Z

    return-void
.end method

.method protected setUseShortClassName(Z)V
    .locals 0

    .line 1636
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    return-void
.end method
