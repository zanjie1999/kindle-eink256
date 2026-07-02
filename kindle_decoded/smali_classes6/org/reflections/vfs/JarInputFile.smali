.class public Lorg/reflections/vfs/JarInputFile;
.super Ljava/lang/Object;
.source "JarInputFile.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$File;


# instance fields
.field private final endIndex:J

.field private final entry:Ljava/util/zip/ZipEntry;

.field private final fromIndex:J

.field private final jarInputDir:Lorg/reflections/vfs/JarInputDir;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipEntry;Lorg/reflections/vfs/JarInputDir;JJ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/reflections/vfs/JarInputFile;->entry:Ljava/util/zip/ZipEntry;

    .line 18
    iput-object p2, p0, Lorg/reflections/vfs/JarInputFile;->jarInputDir:Lorg/reflections/vfs/JarInputDir;

    .line 19
    iput-wide p3, p0, Lorg/reflections/vfs/JarInputFile;->fromIndex:J

    .line 20
    iput-wide p5, p0, Lorg/reflections/vfs/JarInputFile;->endIndex:J

    return-void
.end method

.method static synthetic access$000(Lorg/reflections/vfs/JarInputFile;)Lorg/reflections/vfs/JarInputDir;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/reflections/vfs/JarInputFile;->jarInputDir:Lorg/reflections/vfs/JarInputDir;

    return-object p0
.end method

.method static synthetic access$100(Lorg/reflections/vfs/JarInputFile;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lorg/reflections/vfs/JarInputFile;->fromIndex:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/reflections/vfs/JarInputFile;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lorg/reflections/vfs/JarInputFile;->endIndex:J

    return-wide v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 24
    iget-object v0, p0, Lorg/reflections/vfs/JarInputFile;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/reflections/vfs/JarInputFile;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1

    .line 33
    new-instance v0, Lorg/reflections/vfs/JarInputFile$1;

    invoke-direct {v0, p0}, Lorg/reflections/vfs/JarInputFile$1;-><init>(Lorg/reflections/vfs/JarInputFile;)V

    return-object v0
.end method
