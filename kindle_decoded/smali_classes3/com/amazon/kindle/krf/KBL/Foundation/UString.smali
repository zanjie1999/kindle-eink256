.class public Lcom/amazon/kindle/krf/KBL/Foundation/UString;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_UString__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_UString__SWIG_3(JLcom/amazon/kindle/krf/KBL/Foundation/UString;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_UString__SWIG_1(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_UString__SWIG_2(Ljava/lang/String;J)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public asUtfChar()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_asUtfChar(JLcom/amazon/kindle/krf/KBL/Foundation/UString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public assign(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)Lcom/amazon/kindle/krf/KBL/Foundation/UString;
    .locals 7

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_assign(JLcom/amazon/kindle/krf/KBL/Foundation/UString;JLcom/amazon/kindle/krf/KBL/Foundation/UString;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;-><init>(JZ)V

    return-object v0
.end method

.method public concat(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_concat(JLcom/amazon/kindle/krf/KBL/Foundation/UString;JLcom/amazon/kindle/krf/KBL/Foundation/UString;)V

    return-void
.end method

.method public copyFrom(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_copyFrom__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/UString;Ljava/lang/String;)V

    return-void
.end method

.method public copyFrom(Ljava/lang/String;J)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_copyFrom__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/UString;Ljava/lang/String;J)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KBL_Foundation_UString(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public detach()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_detach(JLcom/amazon/kindle/krf/KBL/Foundation/UString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->delete()V

    return-void
.end method

.method public getLength()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_getLength(JLcom/amazon/kindle/krf/KBL/Foundation/UString;)I

    move-result v0

    return v0
.end method

.method public startsWith(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_startsWith__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/UString;JLcom/amazon/kindle/krf/KBL/Foundation/UString;)Z

    move-result p1

    return p1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_startsWith__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/UString;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public valueEquals(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_valueEquals__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/UString;JLcom/amazon/kindle/krf/KBL/Foundation/UString;)Z

    move-result p1

    return p1
.end method

.method public valueEquals(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_valueEquals__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/UString;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public valueNotEquals(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/UString;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_valueNotEquals__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/UString;JLcom/amazon/kindle/krf/KBL/Foundation/UString;)Z

    move-result p1

    return p1
.end method

.method public valueNotEquals(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_UString_valueNotEquals__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/UString;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
