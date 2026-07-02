.class public Ljavassist/bytecode/SignatureAttribute$ClassType;
.super Ljavassist/bytecode/SignatureAttribute$ObjectType;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassType"
.end annotation


# instance fields
.field arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 692
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$ClassType;

    const-string v1, "java.lang.Object"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/SignatureAttribute$ClassType;-><init>(Ljava/lang/String;[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V
    .locals 0

    .line 684
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$ObjectType;-><init>()V

    .line 685
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2f

    const/16 p3, 0x2e

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    .line 686
    iput-object p4, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V
    .locals 0

    .line 701
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$ObjectType;-><init>()V

    .line 702
    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    .line 703
    iput-object p2, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    return-void
.end method

.method static make(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 7

    if-nez p4, :cond_0

    .line 680
    new-instance p4, Ljavassist/bytecode/SignatureAttribute$ClassType;

    invoke-direct {p4, p0, p1, p2, p3}, Ljavassist/bytecode/SignatureAttribute$ClassType;-><init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V

    return-object p4

    .line 681
    :cond_0
    new-instance v6, Ljavassist/bytecode/SignatureAttribute$NestedClassType;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/SignatureAttribute$NestedClassType;-><init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;Ljavassist/bytecode/SignatureAttribute$ClassType;)V

    return-object v6
.end method

.method private toString2(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3

    .line 752
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    if-eqz v0, :cond_2

    const/16 v0, 0x3c

    .line 754
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 755
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 758
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$ClassType;->arguments:[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    .line 763
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 766
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDeclaringClass()Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public jvmTypeName()Ljava/lang/String;
    .locals 2

    .line 776
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 777
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->getDeclaringClass()Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {v1}, Ljavassist/bytecode/SignatureAttribute$ClassType;->jvmTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 781
    :cond_0
    invoke-direct {p0, v0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->toString2(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 743
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 744
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->getDeclaringClass()Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {v1}, Ljavassist/bytecode/SignatureAttribute$ClassType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 748
    :cond_0
    invoke-direct {p0, v0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->toString2(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
