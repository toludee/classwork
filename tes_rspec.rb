
require './NotesApplication'
#include Notesapp
RSpec.describe "NotesApplication" do
    

    context 'checks for several instances of initialize method' do 
            notetolu =  Assignment::NotesApplication.new("Tolu")
            notelanre =  Assignment::NotesApplication.new("Lanre")
            notesode =  Assignment::NotesApplication.new("Sode")
            notenone = Assignment::NotesApplication.new("")
            notebola =  Assignment::NotesApplication.new("Bola")
           notemayowa =  Assignment::NotesApplication.new("Mayowa")
           notesteven=  Assignment::NotesApplication.new("Steven")
            it 'should return author name Tolu' do
                expect(notetolu.author).to eq "Tolu"
            end
            it 'should reutrn author name Lanre' do
                expect(notelanre.author).to eq "Lanre"
            end
            it 'should reutrn author name Sode' do
                expect(notesode.author).to eq "Sode"
            end
             it 'should reutrn author name none' do
                expect(notenone.author).to eq ""
            end
            it "should reutrn author name Bola" do
               expect(notebola.author).to eq "Bola"
           end
           it "should reutrn author name Mayowa" do
               expect(notemayowa.author).to eq "Mayowa"
           end
           it "should reutrn author name Steven" do
               expect(notesteven.author).to eq "Steven"
           end
             

    end
    
    context "Checks if method" do
        newauthor =  Assignment::NotesApplication.new("Tolu")
        newauthor.create("Life and leverages")
        newauthor.create("Andela Bootcamp")
        newauthor.create("Arsenal is a lovely team")
        newauthor.create("Daystar is wonderful")
        newauthor.create("Ruby class")
        newauthor.create("The life of a Fellow")
        newauthor.create("The life of a programmer")
        it 'initialize returns name of author' do 
            expect(newauthor.author).to eq "Tolu"
        end
        it 'get returns notes with index 0' do
            expect(newauthor.get(0)).to eq "Life and leverages"
        end
        it 'get returns notes with index 1' do
            expect(newauthor.get(1)).to eq "Andela Bootcamp"
        end
        it 'get returns notes with index 2' do
            expect(newauthor.get(2)).to eq "Arsenal is a lovely team"
        end
        it 'get returns notes with index 3' do
            expect(newauthor.get(3)).to eq "Daystar is wonderful"
        end
        
        it 'edit the note given the index and the new content' do
            expect {newauthor.edit(0,"Life is good")}.to change {newauthor.get(0)}. from("Life and leverages").to("Life is good")
        end 

         it 'delete returns some notes with index 0' do
           expect(newauthor.delete(0)).to eq nil
       end

        it 'delete returns some notes with index 1' do
           expect(newauthor.delete(1)).to eq nil
       end
        it 'delete returns some notes with index 2' do
           expect(newauthor.delete(2)).to eq nil
       end

        it 'delete returns some notes with index 3' do
           expect(newauthor.delete(3)).to eq nil
       end      
    end
end
 
