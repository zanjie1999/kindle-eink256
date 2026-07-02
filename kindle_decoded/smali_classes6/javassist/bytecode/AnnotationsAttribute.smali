.class public Ljavassist/bytecode/AnnotationsAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/AnnotationsAttribute$Parser;,
        Ljavassist/bytecode/AnnotationsAttribute$Walker;
    }
.end annotation


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method


# virtual methods
.method public getAnnotations()[Ljavassist/bytecode/annotation/Annotation;
    .locals 3

    .line 270
    :try_start_0
    new-instance v0, Ljavassist/bytecode/AnnotationsAttribute$Parser;

    iget-object v1, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    iget-object v2, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/AnnotationsAttribute$Parser;-><init>([BLjavassist/bytecode/ConstPool;)V

    invoke-virtual {v0}, Ljavassist/bytecode/AnnotationsAttribute$Parser;->parseAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 342
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 345
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 346
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljavassist/bytecode/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    array-length v2, v0

    if-eq v3, v2, :cond_0

    const-string v2, ", "

    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v2, v3

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
